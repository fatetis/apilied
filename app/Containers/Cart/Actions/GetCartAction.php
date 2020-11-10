<?php

namespace App\Containers\Cart\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetCartAction extends Action
{
    public function run()
    {
        try{
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $cart = Apiato::call('Cart@GetCartByUserIdTask', [$user_info['id']]);
            return $cart;
        }catch (\Throwable $throwable) {
            elog('获取购物车抛出异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
