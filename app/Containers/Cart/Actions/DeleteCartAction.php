<?php

namespace App\Containers\Cart\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class DeleteCartAction extends Action
{
    public function run($data)
    {
        try{
            $id = $data->id;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            return Apiato::call('Cart@DeleteCartByUserIdAndIdTask', [$id, $user_info['id']]);
        }catch (\Throwable $throwable) {
            elog('删除购物车抛出异常', $throwable, $data);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
