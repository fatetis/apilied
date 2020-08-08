<?php

namespace App\Containers\Login\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class VerifyCodeRepository
 */
class VerifyCodeRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
