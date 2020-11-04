<?php

namespace App\Containers\Pay\Tasks;

use App\Containers\Pay\Data\Repositories\PayLogRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreatePayLogTask extends Task
{

    protected $repository;

    public function __construct(PayLogRepository $repository)
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
