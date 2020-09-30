<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductSkuStockRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindProductSkuStockBySkuIdTask extends Task
{

    protected $repository;

    public function __construct(ProductSkuStockRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id)
    {
        try {
            return $this->repository
                ->lockForUpdate()
                ->where(['sku_id' => $id])
                ->first();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
