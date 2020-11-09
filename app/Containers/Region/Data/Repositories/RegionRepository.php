<?php

namespace App\Containers\Region\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class RegionRepository
 */
class RegionRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
