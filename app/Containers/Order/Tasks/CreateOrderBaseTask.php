<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\OrderBaseRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreateOrderBaseTask extends Task
{

    protected $repository;

    public function __construct(OrderBaseRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run(array $data)
    {
        try {
            return $this->repository->create($data);
        }
        catch (Exception $exception) {
            throw new CreateResourceFailedException();
        }
    }
}
