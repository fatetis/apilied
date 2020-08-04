<?php

namespace App\Containers\Index\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class AdvRepository
 */
class AdvRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
