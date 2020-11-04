<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductSkuRepository;
use App\Ship\Parents\Tasks\Task;

class IncrementProductSkuNumberByIdTask extends Task
{
    protected $repository;

    public function __construct(ProductSkuRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $number = 1)
    {
        return $this->repository->where('id', $id)->increment('number', $number);
    }
}
