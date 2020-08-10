<?php

namespace App\Containers\Login\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Transporters\DataTransporter;
use Illuminate\Support\Facades\Config;

class LoginUsingMobileVerifyCodeAction extends Action
{
    public function run(DataTransporter $data)
    {
        $mobile = $data->mobile;
        $code = $data->code;
        $data = [
            'account' => $mobile,
            'code' => $code,
        ];
        $user_info = Apiato::call('User@FindUserByMobileTask', [$data['account']]);
        if(empty($user_info)) return GlobalStatusCode::LOGIN_NOT_ISSET_MOBILE;

        $validateCode = Apiato::call('Login@ValidateVerifyCodeAction', [$data]);
        if($validateCode !== GlobalStatusCode::RESULT_SUCCESS_CODE) return $validateCode;

        $req_data = [
            'user_name' => $user_info['user_name'],
            'password'      => '',
            'grant_type'    => $data->grant_type ?? 'password',
            'client_id'       => Config::get('authentication-container.clients.mobile.api.id'),
            'client_password' => Config::get('authentication-container.clients.mobile.api.secret'),
            'scope'         => $data->scope ?? '',
        ];
        $user_info = Apiato::call('Login@CallMobileLoginServerTask', [$req_data]);
//        return $result;
    }
}
