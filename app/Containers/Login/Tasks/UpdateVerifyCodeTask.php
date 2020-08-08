<?php

namespace App\Containers\Login\Tasks;

use App\Containers\Login\Data\Repositories\VerifyCodeRepository;
use App\Ship\Exceptions\UpdateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdateVerifyCodeTask extends Task
{

    protected $repository;

    public function __construct(VerifyCodeRepository $repository)
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
