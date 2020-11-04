<?php

namespace App\Containers\Pay\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class PayLogRepository
 */
class PayLogRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
