<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class ProductAttrValueMap extends Model
{
    protected $table = 'product_attr_value_map';
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
    protected $resourceKey = 'productattrvaluemaps';

    public function value()
    {
        return $this->belongsTo(ProductAttrValues::class, 'product_attr_value_id');
    }
}
