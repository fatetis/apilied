<?php

namespace App\Containers\Cart\Models;

use App\Containers\Product\Models\ProductSku;
use App\Ship\Parents\Models\Model;

class Cart extends Model
{
    protected $table = 'cart';

    protected $fillable = [
        'user_id',
        'sku_id',
        'number'
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
    protected $resourceKey = 'carts';

    public function sku()
    {
        return $this->belongsTo(ProductSku::class, 'sku_id', 'id');
    }
}
