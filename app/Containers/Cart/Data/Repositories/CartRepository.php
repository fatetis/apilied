<?php

namespace App\Containers\Cart\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class CartRepository
 */
class CartRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
