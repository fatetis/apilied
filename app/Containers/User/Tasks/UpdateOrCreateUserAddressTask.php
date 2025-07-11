<?php

namespace App\Containers\User\Tasks;

use App\Containers\User\Data\Repositories\UserAddressRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdateOrCreateUserAddressTask extends Task
{

    protected $repository;

    public function __construct(UserAddressRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($arr, array $data)
    {
        try {
            return $this->repository->updateOrCreate($arr, $data);
        }
        catch (Exception $exception) {
            throw new CreateResourceFailedException();
        }
    }
}
