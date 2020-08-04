<?php

namespace App\Containers\Media\Data\Repositories;

use App\Ship\Parents\Repositories\Repository;

/**
 * Class MediaRepository
 */
class MediaRepository extends Repository
{

    /**
     * @var array
     */
    protected $fieldSearchable = [
        'id' => '=',
        // ...
    ];

}
