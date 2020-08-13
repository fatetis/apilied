<?php

namespace App\Containers\Login\Models;

use App\Ship\Parents\Models\Model;

class VerifyCode extends Model
{
    protected $table = 'verify_code';

    const TYPE_MOBILE = 0; // 手机
    const TYPE_EMAIL = 1; // 邮箱
    const USING_TYPE_LOGIN = 0; // 登录
    const USING_TYPE_REGISTER = 1; // 注册

    public static $using_type_arr = [
        0 => '登录',
        1 => '注册',
    ];

    protected $fillable = [
        'account',
        'code',
        'type',
        'using_type',
        'repeat_num',
        'created_at',
        'updated_at',
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
