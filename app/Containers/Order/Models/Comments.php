<?php

namespace App\Containers\Order\Models;

use App\Ship\Parents\Models\Model;

class Comments extends Model
{
    protected $guarded = [
        'id'
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
    protected $resourceKey = 'comments';

    public function medias()
    {
        return $this->hasMany(CommentMedias::class, 'comment_id')->with(['media'])->orderByDesc('sort');
    }

}
