<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class ProductAttrValues extends Model
{
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
    protected $resourceKey = 'productattrvalues';

    public function attr()
    {
        return $this->belongsTo(ProductAttr::class, 'product_attr_id', 'id');
    }
}
