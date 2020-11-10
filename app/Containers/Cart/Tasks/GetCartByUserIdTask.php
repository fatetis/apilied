<?php

namespace App\Containers\Cart\Tasks;

use App\Containers\Cart\Data\Repositories\CartRepository;
use App\Ship\Parents\Tasks\Task;

class GetCartByUserIdTask extends Task
{

    protected $repository;

    public function __construct(CartRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($user_id)
    {
        return $this->repository
            ->where('user_id', $user_id)
            ->orderByDesc('created_at')
            ->get();
    }
}
