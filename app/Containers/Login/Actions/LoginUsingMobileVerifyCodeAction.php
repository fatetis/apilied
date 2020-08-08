<?php

namespace App\Containers\Login\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Transporters\DataTransporter;

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
        $validateCode = Apiato::call('Login@ValidateVerifyCodeAction', [$data]);
        if($validateCode !== GlobalStatusCode::RESULT_SUCCESS_CODE) return $validateCode;

        $user_info = Apiato::call('Login@FindUserByMobileTask', [$data['account']]);
        $req_data = [
            'user_name' => $user_info['user_name'],
            ''
        ];
        $user_info = Apiato::call('Login@CallMobileLoginServerTask', [$req_data]);
//        return $result;
    }
}
