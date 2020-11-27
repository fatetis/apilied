<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class FindCommentsByIdAction extends Action
{
    public function run($data)
    {
        $id = $data->id;
        // 获取评论数据
        $result = Apiato::call('Order@FindCommentsByIdTask', [$id]);
        return $result;
    }
}
