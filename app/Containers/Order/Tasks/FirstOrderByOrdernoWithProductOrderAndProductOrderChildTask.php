<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\OrderRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Exceptions\Exception;
use App\Ship\Parents\Tasks\Task;

class FirstOrderByOrdernoWithProductOrderAndProductOrderChildTask extends Task
{

    protected $repository;

    public function __construct(OrderRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($orderno)
    {
        try {
            return $this->repository->where('orderno', $orderno)->with('productOrder')->lockForUpdate()->first();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
