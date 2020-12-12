<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Actions\SubAction;
use Apiato\Core\Foundation\Facades\Apiato;
use Illuminate\Support\Facades\DB;

class HandleSyncNotifyToOrderSubAction extends SubAction
{
    public function run($data)
    {
        DB::transaction(function () use($data){
//        orderno
            $orderno = $data['orderno'];
            $order_info = Apiato::call('Order@FirstOrderBaseByOrdernoWithOrderAndOrderChildTask', [$orderno]);
//        $order_info = Apiato::call('Order@FirstOrderBaseByOrdernoOrUserIdTask', [$orderno]);
            if(
                $order_info->order_status == OrderBase::ORDER_STATUS_WAIT_PAY
                && $order_info->pay_status == OrderBase::PAY_STATUS_PAY
            ) {
                // 改变订单状态
                $order_info->order_status = OrderBase::ORDER_STATUS_WAIT_DELIVERY;
                $order_info->pay_status = OrderBase::PAY_STATUS_PAID;
                $order_info->save();
                // 创建支付记录日志
                #todo 创建支付记录所需数据
                $filter_data = [
                    'orderno' => '',
                ];
                $data = [
                    'reqno' => $data['reqno'],
                    'resno' => $data['resno'],
                    'outside_orderno' => $data['outside_orderno'],
                    'pay_price' => $data['pay_price'],
                    'pay_id' => $data['pay_id'],
                    'pay_name' => $data['pay_name'],
                    'is_pay'=> $data['is_pay'],
                ];
                $paylog_result = Apiato::call('Pay@UpdateOrCreatePayLogByOrdernoTask', [$filter_data, $data]);
                // 产品sku的销量新增
                foreach ($order_info->order->orderchild as $value) {
                    Apiato::call('Product@IncrementProductSkuNumberByIdTask', [$value->id]);
                }

            }
        });

    }
}
