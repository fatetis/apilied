<?php

namespace App\Containers\User\Actions;

use App\Containers\Index\Models\Adv;
use App\Containers\Order\Models\Order;
use App\Containers\Order\Models\ProductOrder;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class UserCenterAction extends Action
{
    public function run()
    {
        $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
        $data = [
            'order' => [],
            'user_info' => $user_info,
        ];
        /**
         * 统计订单数量（待付款，待发货，待收货，待评价，退款&售后）
         */
        $order_result = Apiato::call('Order@GetProductOrderByUserIdAndStatusTask', [[
            ProductOrder::SHOW_STATUS_WAIT_PAY,
            ProductOrder::SHOW_STATUS_WAIT_DELIVERY,
            ProductOrder::SHOW_STATUS_WAIT_PART_DELIVERY,
            ProductOrder::SHOW_STATUS_WAIT_TAKE,
            ProductOrder::SHOW_STATUS_WAIT_APPRAISE,
            ProductOrder::SHOW_STATUS_REFUNDING,
        ], $user_info['id']]);
        collect($order_result)->map(function ($value) use (&$data) {
            if ($value->show_status == ProductOrder::SHOW_STATUS_WAIT_PAY) {
                !isset($data['order']['wait_pay']) && $data['order']['wait_pay'] = 0;
                $data['order']['wait_pay']++;
            } elseif (in_array($value->show_status, [
                ProductOrder::SHOW_STATUS_WAIT_DELIVERY,
                ProductOrder::SHOW_STATUS_WAIT_PART_DELIVERY
            ])) {
                !isset($data['order']['wait_delivery']) && $data['order']['wait_delivery'] = 0;
                $data['order']['wait_delivery']++;
            } elseif ($value->show_status == ProductOrder::SHOW_STATUS_WAIT_TAKE) {
                !isset($data['order']['wait_take']) && $data['order']['wait_take'] = 0;
                $data['order']['wait_take']++;
            } elseif ($value->show_status == ProductOrder::SHOW_STATUS_WAIT_APPRAISE) {
                !isset($data['order']['wait_appraise']) && $data['order']['wait_appraise'] = 0;
                $data['order']['wait_appraise']++;
            } elseif ($value->show_status == ProductOrder::SHOW_STATUS_REFUNDING) {
                !isset($data['order']['wait_refund']) && $data['order']['wait_refund'] = 0;
                $data['order']['wait_refund']++;
            }
        });
        /**
         * 个人中心广告图
         */
        $data['adv'] = Apiato::call('Index@GetAdvByEnameTask', [['ename' => [Adv::ENAME_USER_CENTER]]]);
        return $data;
    }
}
