<?php

namespace App\Containers\Order\Models;

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

    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'orders';

    const ORDER_TYPE_ORDINARY = 0; // 普通订单类型
}
