<?php

namespace App\Containers\Login\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Transporters\DataTransporter;
use Carbon\Carbon;

class ValidateVerifyCodeAction extends Action
{
    public function run($data)
    {

        $data = [
            'type' => $data['type'] ?? GlobalStatusCode::VERIFY_CODE_DEFAULT_TYPE,
            'account' => $data['account'],
            'code' => $data['code'],
            'num' => $data['num'] ?? GlobalStatusCode::VERIFY_CODE_DEFAULT_NUM,
            'using_type' => $data['using_type'] ?? GlobalStatusCode::VERIFY_CODE_DEFAULT_USING_TYPE,
        ];
        $code_info = Apiato::call('Login@FindVerifyCodeByMobileTask', [$data]);

        if ($code_info){
//            $code_info = Apiato::call('Login@IncrementVerifyCodeByRepeatNumTask', [1]);
            $time = Carbon::now();
            $created_at = Carbon::parse($code_info['created_at'])->addMinutes(3)->toDateTimeString();
//            if($time->gt($created_at)) return GlobalStatusCode::LOGIN_VERIFY_CODE_OVERDUE;
            if($code_info['code'] !== $data['code']) return GlobalStatusCode::LOGIN_VERIFY_CODE_ERROR;
            if($code_info['repeat_num'] > $data['num']) return GlobalStatusCode::LOGIN_MAXED_NUM;
//            $code_info['deleted_at'] = dt();
//            $code_info->save();
            return GlobalStatusCode::RESULT_SUCCESS_CODE;
        } else {
            return GlobalStatusCode::LOGIN_NOT_ISSET_VERIFY_CODE;
        }

    }
}
