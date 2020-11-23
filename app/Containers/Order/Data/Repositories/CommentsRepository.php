<?php

namespace App\Containers\Order\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class CommentsRepository
 */
class CommentsRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
