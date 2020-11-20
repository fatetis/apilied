<?php

namespace App\Containers\Order\Models;

use App\Ship\Parents\Models\Model;

class Snapshots extends Model
{
    protected $fillable = [
        'id_value',
        'type',
        'value'
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
    protected $resourceKey = 'snapshots';

    /**
     * 订单类型
     */
    const TYPE_ORDER = 0;
}
