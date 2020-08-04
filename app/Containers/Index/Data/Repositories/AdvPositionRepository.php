<?php

namespace App\Containers\Index\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class AdvPositionRepository
 */
class AdvPositionRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
