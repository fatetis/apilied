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
        $sql = $this->repository->where([
            'user_id' => $user_id
        ]);
        !in_array(null, $status) && $sql = $sql->whereIn('order_status', $status);
        return $sql->paginate(10);
    }
}
