<?php

namespace App\Containers\User\Tasks;

use App\Containers\User\Data\Repositories\UserAddressRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeleteUserAddressTask extends Task
{

    protected $repository;

    public function __construct(UserAddressRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $user_id)
    {
        try {
            return $this->repository->where('user_id', $user_id)->where('id', $id)->delete();
        }
        catch (Exception $exception) {
            throw new DeleteResourceFailedException();
        }
    }
}
