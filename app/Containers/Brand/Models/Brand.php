<?php

namespace App\Containers\Brand\Models;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Models\Model;

class Brand extends Model
{
    protected $table = 'brand';
    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
//        'created_at',
//        'updated_at',
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'brands';

    public function media()
    {
        return $this->belongsTo(Media::class, 'media_id')->where('is_show', GlobalStatusCode::YES);
    }

}
