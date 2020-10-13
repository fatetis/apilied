<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\OrderBaseRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindOrderBaseByOrdernoTask extends Task
{

    protected $repository;

    public function __construct(OrderBaseRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($orderno)
    {
        try {
            return $this->repository->findByField('orderno', $orderno)->first();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
