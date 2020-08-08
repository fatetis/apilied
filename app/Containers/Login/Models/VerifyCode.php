<?php

namespace App\Containers\Login\Models;

use App\Ship\Parents\Models\Model;

class VerifyCode extends Model
{
    protected $table = 'verify_code';

    const type_mobile = 0; // 手机
    const type_email = 1; // 邮箱
    const using_type_login = 0; // 登录

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
    protected $resourceKey = 'verifycodes';
}
