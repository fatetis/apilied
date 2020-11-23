<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentMediasRepository;
use App\Ship\Parents\Tasks\Task;

class UpdateOrCreateCommentMediasTask extends Task
{

    protected $repository;

    public function __construct(CommentMediasRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($array, $data)
    {
        $this->repository->updateOrCreate($array, $data);

    }
}
