<?php

namespace App\Containers\Order\Models;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
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

    /**
     * 父级评论est
     */
    const PID_EST = 0;

    public function medias()
    {
        return $this->hasMany(CommentMedias::class, 'comment_id')->with(['media'])->orderByDesc('sort');
    }

    public function child()
    {
        return $this->hasMany(Comments::class, 'pid')
            ->orderByDesc('is_brand')
            ->orderByDesc('is_quality')
            ->orderByDesc('created_at');
    }

    public function fromuserimg()
    {
        return $this->belongsTo(Media::class, 'from_media_id')->where('is_show', GlobalStatusCode::YES);
    }

}
