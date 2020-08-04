<?php

namespace App\Containers\Index\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class AdvOpenRepository
 */
class AdvOpenRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
