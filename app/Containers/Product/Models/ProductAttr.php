<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class ProductAttr extends Model
{
    protected $table = 'product_attr';
    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
        'updated_at',
        'created_at',
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'productattrs';

    public function values()
    {
        return $this->hasMany(ProductAttrValues::class, 'product_attr_id');
    }
}
