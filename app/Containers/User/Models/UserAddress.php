<?php

namespace App\Containers\User\Models;

use App\Ship\Parents\Models\Model;

class UserAddress extends Model
{
    protected $table = 'user_address';

    protected $fillable = [
        'user_id',
        'name',
        'region_pid',
        'region_cid',
        'region_aid',
        'address',
        'mobile',
        'code',
        'is_default',
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
    protected $resourceKey = 'useraddresses';
}
