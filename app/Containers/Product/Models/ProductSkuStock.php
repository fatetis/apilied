<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class ProductSkuStock extends Model
{
    protected $table = 'product_sku_stock';
    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'productskustocks';
}
