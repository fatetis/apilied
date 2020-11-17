<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class UpdateOrderBaseAction extends Action
{
    public function run($data)
    {
        try{
            $update_data = [
                'price' => $data->price,
                'shipping_price' => $data->shipping_price,
            ];
            $update_data = array_filter($update_data);
            $status = $data->status;
            if($status !== null && in_array($status, OrderBase::ORDER_STATUS)) {
                $update_data['order_status'] = $status;
            }
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $where_data = [
                'user_id' => $user_info['id'],
                'orderno' => $data->orderno,
            ];
            $result = Apiato::call('Order@UpdateOrderBaseTask', [$update_data, $where_data]);
            return $result;
        }catch (\Throwable $throwable){
            elog('更新订单信息异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
