<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentMediasRepository;
use App\Ship\Parents\Tasks\Task;

class DeleteCommentMediasByCommentIdAndNotInIdsTask extends Task
{

    protected $repository;

    public function __construct(CommentMediasRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($comment_id, $ids)
    {
        return $this->repository->where('comment_id', $comment_id)->whereNotIn('id', $ids)->delete();
    }
}
