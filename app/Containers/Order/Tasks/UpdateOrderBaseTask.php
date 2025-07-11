<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\ProductOrderRepository;
use App\Ship\Parents\Tasks\Task;

class UpdateOrderBaseTask extends Task
{
    protected $repository;

    public function __construct(ProductOrderRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($update_data, $where_data)
    {
        return $this->repository->where($where_data)->update($update_data);
    }
}
