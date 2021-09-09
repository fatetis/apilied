<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\ProductOrderRepository;
use App\Ship\Parents\Tasks\Task;

class GetAllProductOrderByUserIdAndStatusTask extends Task
{

    protected $repository;

    public function __construct(ProductOrderRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($status, $user_id)
    {
        $sql = $this->repository
            ->with(['order' => function ($query) use ($user_id) {
                $query->where([
                    'user_id' => $user_id
                ]);
            }]);
        !in_array(null, $status) && $sql = $sql->whereIn('show_status', $status);
        return $sql->orderBy('created_at', 'desc')->paginate(10);
    }
}
