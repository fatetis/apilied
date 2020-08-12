<?php

namespace App\Containers\Login\Actions;

use App\Containers\Authentication\Data\Transporters\ProxyApiLoginTransporter;
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

        // 验证码校验
        $validateCode = Apiato::call('Login@ValidateVerifyCodeAction', [$data]);
        if($validateCode !== GlobalStatusCode::RESULT_SUCCESS_CODE) return $validateCode;

        // 获取用户名数据
        $user_info = Apiato::call('User@FindUserByMobileTask', [$data['account']]);
        if(empty($user_info)) {
            // 手机号注册
            $user_info = Apiato::call('User@RegisterUserAction', [new DataTransporter([
                'mobile' => $data['account'],
                'username' => 'lied_'.encrypt($user_info['id']),
            ])]);
        };

        // 用户登录
        $dataTransporter = new ProxyApiLoginTransporter([
                'username' => $user_info['username'],
                'password'      => Config::get('authentication-container.clients.mobile.api.secret'),
                'client_id'       => Config::get('authentication-container.clients.mobile.api.id'),
                'client_password' => Config::get('authentication-container.clients.mobile.api.secret')
            ]);
        $result = Apiato::call('Authentication@ProxyApiLoginAction', [$dataTransporter]);

        return $result;
    }
}
