<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class GetCommentsByPidAction extends Action
{
    public function run($data)
    {
        $pid = $data->pid;
        // 获取评论数据
        $comment = Apiato::call('Order@GetCommentsByPidTask', [$pid]);
        return $comment;
    }
}
