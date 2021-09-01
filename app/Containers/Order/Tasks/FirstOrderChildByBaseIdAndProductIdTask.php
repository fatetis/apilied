<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\ProductOrderChildRepository;
use App\Ship\Parents\Tasks\Task;

class FirstOrderChildByBaseIdAndProductIdTask extends Task
{

    protected $repository;

    public function __construct(ProductOrderChildRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($base_id, $product_id)
    {
        return $this->repository->findWhere([
            'base_id' => $base_id,
            'product_id' => $product_id
        ])->first();
    }

}
