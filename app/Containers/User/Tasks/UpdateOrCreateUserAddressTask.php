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

    public function run($id, array $data)
    {
        try {
            return $this->repository->updateOrCreate([
                'id' => $id
            ], $data);
        }
        catch (Exception $exception) {
            throw new CreateResourceFailedException();
        }
    }
}
