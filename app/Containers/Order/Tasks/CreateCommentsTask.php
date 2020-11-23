<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentsRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreateCommentsTask extends Task
{

    protected $repository;

    public function __construct(CommentsRepository $repository)
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
