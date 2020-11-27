<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentsRepository;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class GetCommentsByPidTask extends Task
{

    protected $repository;

    public function __construct(CommentsRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($pid)
    {
        return $this->repository
            ->selectRaw("*")
            ->where(['pid' => $pid, 'is_show' => GlobalStatusCode::YES])
            ->orderByDesc('is_brand')
            ->orderByDesc('is_quality')
            ->orderByDesc('created_at')
            ->paginate();
    }
}
