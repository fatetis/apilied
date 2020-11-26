<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\CommentsRepository;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class GetCommentsByPidAndProductIdTask extends Task
{

    protected $repository;

    public function __construct(CommentsRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($pid, $product_id)
    {
        return $this->repository
            ->selectRaw("*, (select count(`id`) from lied_comments b where b.pid = lied_comments.id) as reply_num")
            ->where(['pid' => $pid, 'product_id' => $product_id, 'is_show' => GlobalStatusCode::YES])
            ->orderByDesc('is_brand')
            ->orderByDesc('is_quality')
            ->orderByDesc('created_at')
            ->paginate();
    }
}
