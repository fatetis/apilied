<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\ProductOrderRepository;
use App\Ship\Parents\Tasks\Task;

class GetProductOrderByUserIdAndStatusTask extends Task
{

    protected $repository;

    public function __construct(ProductOrderRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($status, $user_id)
    {
        return $this->repository
            ->leftJoin('order', 'order.id', 'product_order.order_id')
            ->where(['user_id' => $user_id])
            ->whereIn('show_status', $status)
            ->get();
    }
}
