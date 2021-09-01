<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\Order;
use App\Containers\Order\Models\ProductOrder;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetAllOrderByStatusAction extends Action
{
    public function run($data)
    {
        try{
            $status = $data->status;
            if(
                $status !== null
                && (!is_numeric($status) || !in_array($status, array_keys(ProductOrder::SHOW_STATUS)))
            ) throw new WrongEnoughIfException();

            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            /**
             * 查询订单状态如果是待发货就自动吧部分发货的查询条件加上
             */
            $status === ProductOrder::SHOW_STATUS_WAIT_DELIVERY && $status = [
                ProductOrder::SHOW_STATUS_WAIT_DELIVERY,
                ProductOrder::SHOW_STATUS_WAIT_PART_DELIVERY
            ];

            $result = Apiato::call('Order@GetAllProductOrderByUserIdAndStatusTask', [
                is_array($status) ? $status : [$status],
                $user_info['id']
            ]);
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException){
            return GlobalStatusCode::ORDER_STATUS_FAIL;
        }

    }
}
