<?php

namespace App\Containers\Product\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class ProductAttrRepository
 */
class ProductAttrRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
