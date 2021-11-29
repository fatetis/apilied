<?php

namespace App\Containers\Order\Models;

use App\Containers\Product\Models\Product;
use App\Containers\Product\Models\ProductSku;
use App\Ship\Parents\Models\Model;

class ProductOrderChild extends Model
{
    protected $table = 'product_order_child';

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
    protected $resourceKey = 'orderchildren';

    public function product()
    {
        return $this->hasOne(Product::class, 'id', 'product_id');
    }

    public function productSku()
    {
        return $this->hasOne(ProductSku::class, 'id', 'sku_id');
    }
}
