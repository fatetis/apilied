<?php

namespace App\Containers\Index\Models;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Models\Model;

class Adv extends Model
{
    protected $table = 'adv';

    protected $fillable = [

    ];

    protected $attributes = [

    ];

    protected $hidden = [

    ];

    protected $casts = [

    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    /**
     * A resource key to be used by the the JSON API Serializer responses.
     */
    protected $resourceKey = 'advs';

    public function media()
    {
        return $this->belongsTo(Media::class, 'media_id');
    }
}
