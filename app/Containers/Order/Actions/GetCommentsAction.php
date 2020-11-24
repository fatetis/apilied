<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class GetCommentsAction extends Action
{
    public function run($data)
    {
        $pid = 0;
        $base_id = $data->base_id;
        $var = Apiato::call('Order@GetCommentsByPidAndBaseIdTask', [$pid, $base_id]);
    }
}
