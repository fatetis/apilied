<?php

namespace App\Containers\Product\Models;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Models\Model;

class ProductSku extends Model
{
    protected $table = 'product_sku';
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
    protected $resourceKey = 'productskus';

    public function stock()
    {
        return $this->hasOne(ProductSkuStock::class, 'sku_id');
    }

    public function media()
    {
        return $this->belongsTo(Media::class, 'media_id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id')->with('medias');
    }
}
