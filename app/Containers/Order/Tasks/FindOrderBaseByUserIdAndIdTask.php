<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\ProductOrderRepository;
use App\Ship\Parents\Tasks\Task;

class FindOrderBaseByUserIdAndIdTask extends Task
{

    protected $repository;

    public function __construct(ProductOrderRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $user_id)
    {
        return $this->repository->findWhere(['user_id' => $user_id])->find($id);
    }
}
