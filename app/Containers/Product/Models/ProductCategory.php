<?php

namespace App\Containers\Product\Models;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
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
        return $this->hasMany(ProductCategory::class, 'pid')->with('media')
            ->select('name', 'id', 'is_rec', 'pid', 'media_id')
            ->orderBy('sort')
            ->OrderBydesc('updated_at');
    }

    public function media()
    {
        return $this->belongsTo(Media::class, 'media_id', 'id')
            ->where('is_show', GlobalStatusCode::YES)->select('id', 'link');
    }

}
