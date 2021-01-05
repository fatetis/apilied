<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\OrderBaseRepository;
use App\Ship\Parents\Tasks\Task;

class GetOrderBaseByUserIdAndStatusTask extends Task
{

    protected $repository;

    public function __construct(OrderBaseRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($status, $user_id)
    {
        return $this->repository->where(['user_id' => $user_id])->whereIn('order_status', $status)->get();
    }
}
