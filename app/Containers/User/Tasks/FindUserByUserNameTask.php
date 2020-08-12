<?php

namespace App\Containers\User\Tasks;

use App\Containers\User\Data\Repositories\UserRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;

class FindUserByUserNameTask extends Task
{

    protected $repository;

    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($username)
    {
        try {
            return $this->repository->findByField('username', $username)->first();
        } catch (\Exception $e) {
            throw new NotFoundException();
        }
    }

}
