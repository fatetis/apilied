<?php

namespace App\Containers\User\Models;

use App\Ship\Parents\Models\Model;

class Region extends Model
{
    protected $primaryKey = 'region_id';

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
    protected $resourceKey = 'regions';

    /**
     * 省份等级
     */
    const GRADE_PROVINCE = 1;

    /**
     * 市等级
     */
    const GRADE_CITY = 2;

    /**
     * 镇区等级
     */
    const GRADE_AREA = 3;
}
