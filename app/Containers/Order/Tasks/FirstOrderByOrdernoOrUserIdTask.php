<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\OrderRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FirstOrderByOrdernoOrUserIdTask extends Task
{

    protected $repository;

    public function __construct(OrderRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($orderno, $user_id = '')
    {
        try {
            if(!empty($user_id)) $this->repository = $this->repository->where(['user_id' => $user_id]);
            return $this->repository->where('orderno', $orderno)->first();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
