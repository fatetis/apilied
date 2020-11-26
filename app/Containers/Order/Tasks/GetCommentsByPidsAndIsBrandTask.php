<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentsRepository;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class GetCommentsByPidsAndIsBrandTask extends Task
{

    protected $repository;

    public function __construct(CommentsRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($pids)
    {
        return $this->repository
            ->whereIn('pid', $pids)
            ->where([
                'is_brand' => GlobalStatusCode::YES,
                'is_show' => GlobalStatusCode::YES
            ])
            ->orderByDesc('created_at')
            ->get();
    }
}
