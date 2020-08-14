<?php

namespace App\Containers\Product\Models;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Models\Model;

class ProductMedia extends Model
{
    protected $table = 'product_medias';
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
    protected $resourceKey = 'productmedia';

    public function media()
    {
        return $this->belongsTo(Media::class, 'media_id')->where('is_show', GlobalStatusCode::YES);
    }
}
