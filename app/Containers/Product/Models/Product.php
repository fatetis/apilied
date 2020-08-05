<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class Product extends Model
{
    protected $table = 'product';
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
    protected $resourceKey = 'products';
}
