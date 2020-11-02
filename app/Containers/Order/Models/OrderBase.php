<?php

namespace App\Containers\Order\Models;

use App\Ship\Parents\Models\Model;

class OrderBase extends Model
{
    protected $table = 'order_base';

    protected $guarded = [
        'id'
    ];

    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [
//        'updated_at',
//        'created_at',
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'order_base';

    /**
     * 订单状态
     */
    const ORDER_STATUS_WAIT_PAY = 0; // 待付款
    const ORDER_STATUS_WAIT_DELIVERY = 1; // 待发货
    const ORDER_STATUS_WAIT_TAKE = 2; // 待收货
    const ORDER_STATUS_WAIT_APPRAISE = 3; // 待评价
    const ORDER_STATUS_WAIT_SUCCESS = 4; // 交易成功
    const ORDER_STATUS_WAIT_CLOSE = 5; // 交易关闭
    const ORDER_STATUS_WAIT_REFUNDING = 6; // 退款中
    const ORDER_STATUS_WAIT_REFUNDED = 7; // 退款完成
    /**
     * 支付状态
     */
    const PAY_STATUS_PAY = 0; // 待付款
    const PAY_STATUS_PAID = 1; // 已付款
    /**
     * 来源订单
     */
    const SOURCE_ORDINARY = 0; // 普通订单


}
