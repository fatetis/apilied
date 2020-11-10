<?php

namespace App\Containers\User\Tasks;

use App\Containers\User\Data\Repositories\UserAddressRepository;
use App\Ship\Parents\Tasks\Task;

class UpdateUserAddressByUserIdTask extends Task
{

    protected $repository;

    public function __construct(UserAddressRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($data, $user_id)
    {
        return $this->repository->where('user_id', $user_id)->update($data);
    }
}
