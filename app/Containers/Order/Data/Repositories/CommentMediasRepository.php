<?php

namespace App\Containers\Order\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class CommentMediasRepository
 */
class CommentMediasRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
