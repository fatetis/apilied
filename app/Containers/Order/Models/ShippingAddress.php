<?php

namespace App\Containers\Order\Models;

use App\Ship\Parents\Models\Model;

class ShippingAddress extends Model
{
    protected $table = 'shipping_address';

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
    protected $resourceKey = 'shippingaddresses';
}
