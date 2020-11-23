<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentMediasRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreateCommentMediasTask extends Task
{

    protected $repository;

    public function __construct(CommentMediasRepository $repository)
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
