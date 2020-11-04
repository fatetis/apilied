<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductSkuStockRepository;
use App\Ship\Parents\Tasks\Task;

class DecrementProductSkuStockQuantityBySkuIdTask extends Task
{

    protected $repository;

    public function __construct(ProductSkuStockRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $number = 1)
    {
        return $this->repository->where('sku_id', $id)->decrement('quantity', $number);
    }
}
