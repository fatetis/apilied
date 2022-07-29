<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\Order;
use App\Containers\Order\Models\ProductOrder;
use App\Ship\Parents\Actions\SubAction;
use Apiato\Core\Foundation\Facades\Apiato;
use Illuminate\Support\Facades\DB;

class HandleSyncNotifyToOrderSubAction extends SubAction
{
    public function run($data)
    {
        DB::transaction(function () use($data){
            $orderno = $data['orderno'];
            $order_info = Apiato::call('Order@FirstOrderByOrdernoWithProductOrderAndProductOrderChildTask', [$orderno]);
            if(
                $order_info->pay_status == Order::PAY_STATUS_PAY
                && $order_info->order_status == Order::ORDER_STATUS_TRADING
            ) {
                /**
                 * 改变订单状态
                 */
                $order_info->pay_status = Order::PAY_STATUS_PAID;
                $order_info->pay_price = $data['pay_price'];
                $order_info->paidno = $data['outside_orderno'];
                $order_info->save();
                // 创建支付记录日志
                #todo 创建支付记录所需数据
                $filter_data = [
                    'orderno' => $orderno,
                ];
                $data = [
                    'reqno' => $data['reqno'],
                    'resno' => $data['resno'],
                    'orderno' => $orderno,
                    'outside_orderno' => $data['outside_orderno'],
                    'pay_price' => $data['pay_price'],
                    'pay_id' => $data['pay_id'],
                    'pay_name' => $data['pay_name'],
                    'is_pay'=> $data['is_pay'],
                ];
                Apiato::call('Pay@UpdateOrCreatePayLogByOrdernoTask', [$filter_data, $data]);
                // 产品sku的销量新增
                foreach ($order_info->productOrder as $value) {
                    $value->show_status = ProductOrder::SHOW_STATUS_WAIT_DELIVERY;
                    $value->save();
                    foreach ($value->productOrderChild as $val) {
                        Apiato::call('Product@IncrementProductSkuSoldNumByIdTask', [
                            $val->id,
                            $val->number
                        ]);
                        $val->show_status = ProductOrder::SHOW_STATUS_WAIT_DELIVERY;
                        $val->save();
                    }
                }
            }
        });
        return true;

    }
}
