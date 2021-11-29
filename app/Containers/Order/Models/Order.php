<?php

namespace App\Containers\Order\Models;

use App\Containers\Pay\Models\PayLog;
use App\Ship\Parents\Models\Model;

class Order extends Model
{
    protected $table = 'order';

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

    const ORDER_STATUS = [
        0 => '交易中',
        1 => '交易成功',
        2 => '交易关闭',
    ];

    /**
     * 订单状态
     */
    const ORDER_STATUS_TRADING = 0;
    const ORDER_STATUS_SUCCESS = 1;
    const ORDER_STATUS_CLOSE = 2;

    /**
     * 支付状态
     */
    const PAY_STATUS_PAY = 0;
    const PAY_STATUS_PAID = 1;
    const PAY_STATUS_REFUNDING = 2;
    const PAY_STATUS_REFUNDED = 3;

    /**
     * 来源订单
     */
    const SOURCE_ORDINARY = 0; // 普通订单

    public function productOrder()
    {
        return $this->hasMany(ProductOrder::class, 'order_id', 'id')->with('productOrderChild');
    }

    public function snapshot()
    {
        return $this->belongsTo(Snapshots::class, 'id', 'id_value')->where('type', Snapshots::TYPE_ORDER);
    }

    public function paylog()
    {
        return $this->hasOne(PayLog::class, 'orderno', 'orderno');
    }

}
