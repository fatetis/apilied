<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductSkuRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdateProductSkuByIdTask extends Task
{

    protected $repository;

    public function __construct(ProductSkuRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, array $data)
    {
        try {
            return $this->repository->update($data, $id);
        }
        catch (Exception $exception) {
            throw new UpdateResourceFailedException();
        }
    }
}
