<?php

namespace App\Containers\User\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class DeleteUserAddressAction extends Action
{
    public function run($data)
    {
        try{
            $id = $data->id;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            return Apiato::call('User@DeleteUserAddressTask', [$id, $user_info['id']]);
        }catch (\Throwable $throwable) {
            elog('删除我的收货地址抛出异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
