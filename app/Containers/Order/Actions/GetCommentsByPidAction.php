<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class GetCommentsByPidAction extends Action
{
    public function run($data)
    {
        $pid = $data->pid;
        dd($pid);
        // $var = Apiato::call('Container@Task', [$arg1, $arg2, ...]);
    }
}
