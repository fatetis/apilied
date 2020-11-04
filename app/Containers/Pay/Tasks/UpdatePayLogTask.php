<?php

namespace App\Containers\Pay\Tasks;

use App\Containers\Pay\Data\Repositories\PayLogRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdatePayLogTask extends Task
{

    protected $repository;

    public function __construct(PayLogRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, array $data)
    {
        try {
            return $this->repository->update($data, $id);
        }
        catch (Exception $exception) {
            throw new UpdateResourceFailedException();
        }
    }
}
