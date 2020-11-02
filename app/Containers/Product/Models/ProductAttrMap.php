<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class ProductAttrMap extends Model
{
    protected $table = 'product_attr_map';

    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
//        'updated_at',
//        'created_at',
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'productattrmaps';

    public function attr()
    {
        return $this->belongsTo(ProductAttr::class, 'product_attr_id');
    }

    public function values()
    {
        return $this->hasMany(ProductAttrValueMap::class, 'product_attr_map_id', 'id')
            ->orderByDesc('sort');
    }


}
