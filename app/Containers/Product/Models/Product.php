<?php

namespace App\Containers\Product\Models;

use App\Containers\Brand\Models\Brand;
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

    ];

    public function category()
    {
        return $this->belongsTo(ProductCategory::class, 'category_id', 'id');
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class, 'brand_id', 'id');
    }

    public function attrs()
    {
        return $this->hasMany(ProductAttrMap::class, 'product_id')
            ->with([
                'values',
                'values.value',
                'attr'
            ])->orderByDesc('sort');
    }

    public function skus()
    {
        return $this->hasMany(ProductSku::class, 'product_id')->with(['stock', 'media']);
    }

    public function medias()
    {
        return $this->hasMany(ProductMedia::class, 'product_id')->with(['media']);
    }


    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'products';
}
