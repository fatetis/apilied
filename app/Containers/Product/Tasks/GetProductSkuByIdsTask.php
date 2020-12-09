<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductSkuRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Exceptions\Exception;
use App\Ship\Parents\Tasks\Task;

class GetProductSkuByIdsTask extends Task
{

    protected $repository;

    public function __construct(ProductSkuRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($ids)
    {
        try {
            return $this->repository->findwhereIn('id', $ids);
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
