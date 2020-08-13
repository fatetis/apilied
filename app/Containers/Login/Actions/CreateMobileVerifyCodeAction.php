<?php

namespace App\Containers\Login\Actions;

use App\Containers\Login\Models\VerifyCode;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class CreateMobileVerifyCodeAction extends Action
{
    public function run($data)
    {
        $data = [
            'account' => $data->mobile,
            'using_type' => $data->using_type
        ];
        if(!in_array($data['using_type'], array_keys(VerifyCode::$using_type_arr))) return GlobalStatusCode::VERIFY_CODE_NOT_USING_TYPE;
        $user_info = Apiato::call('User@FindUserByMobileTask', [$data['account']]);

        if($data['using_type'] == VerifyCode::USING_TYPE_LOGIN && empty($user_info)) return GlobalStatusCode::VERIFY_CODE_NOT_ISSET_ACCOUNT;
        if($data['using_type'] == VerifyCode::USING_TYPE_REGISTER && !empty($user_info)) return GlobalStatusCode::VERIFY_CODE_ISSET_ACCOUNT;

        $count_today_verify_code = Apiato::call('Login@CountTodayVerifyCodeByMobileAndTypeAndUsingTypeTask', [array_merge([
            'type' => VerifyCode::TYPE_MOBILE
        ], $data)]);
        if($count_today_verify_code > GlobalStatusCode::VERIFY_CODE_GET_NUM_DEFAULT) return GlobalStatusCode::VERIFY_CODE_MAXED_GET;
        $data['code'] = randNum();
        $verifycode = Apiato::call('Login@CreateVerifyCodeTask', [$data]);
        return $verifycode;
    }
}
