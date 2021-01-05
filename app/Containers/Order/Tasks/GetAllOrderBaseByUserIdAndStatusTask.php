<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\OrderBaseRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllOrderBaseByUserIdAndStatusTask extends Task
{

    protected $repository;

    public function __construct(OrderBaseRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($status, $user_id)
    {
        $data = array_merge([
            'user_id' => $user_id
        ],$status === null ? [] : ['order_status' => $status]);
        return $this->repository->where($data)->paginate();
    }
}
