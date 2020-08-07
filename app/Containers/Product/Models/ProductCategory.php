<?php

namespace App\Containers\Product\Models;

use App\Ship\Parents\Models\Model;

class ProductCategory extends Model
{
    protected $table = 'product_category';
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
    protected $resourceKey = 'productcategories';

    public function children()
    {
        return $this->hasMany(ProductCategory::class, 'pid')
            ->select('name', 'id', 'is_rec', 'pid')
            ->orderBy('sort')
            ->OrderBydesc('updated_at');
    }

}
