<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentsRepository;
use App\Ship\Parents\Tasks\Task;

class UpdateOrCreateCommentsTask extends Task
{

    protected $repository;

    public function __construct(CommentsRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($array, $data)
    {
        return $this->repository->updateOrCreate($array, $data);
    }
}
