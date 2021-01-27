<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetAllOrderBaseByStatusAction extends Action
{
    public function run($data)
    {
        try{
            $status = $data->status;
            if(
                $status !== null
                && (!is_numeric($status) || !in_array($status, array_keys(OrderBase::ORDER_STATUS)))
            ) throw new WrongEnoughIfException();

            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            /**
             * 查询订单状态如果是待发货就自动吧部分发货的查询条件加上
             */
            $status === OrderBase::ORDER_STATUS_WAIT_DELIVERY && $status = [
                OrderBase::ORDER_STATUS_WAIT_DELIVERY,
                OrderBase::ORDER_STATUS_WAIT_PART_DELIVERY
            ];

            $result = Apiato::call('Order@GetAllOrderBaseByUserIdAndStatusTask', [
                is_array($status) ? $status : [$status],
                $user_info['id']
            ]);
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException){
            return GlobalStatusCode::ORDER_STATUS_FAIL;
        }catch (\Throwable $throwable){
            elog('查询订单信息异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
