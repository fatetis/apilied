<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductSkuRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindProductSkuWithProductAndStockByIdTask extends Task
{

    protected $repository;

    public function __construct(ProductSkuRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id)
    {
        try {
            return $this->repository->with(['product', 'stock'])->lockForUpdate()->find($id);
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
