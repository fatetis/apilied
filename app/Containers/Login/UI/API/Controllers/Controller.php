<?php

namespace App\Containers\Login\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Login\UI\API\Requests\LoginUsingMobileVerifyCodeRequest;
use App\Ship\Parents\Controllers\ApiController;

class Controller extends ApiController
{

    /**
     * 手机验证码登录
     * @param LoginUsingMobileVerifyCodeRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/8/12 001216:48
     */
    public function loginUsingMobileVerifyCode(LoginUsingMobileVerifyCodeRequest $request)
    {
        $result = Apiato::call('Login@LoginUsingMobileVerifyCodeAction', [$request]);
        return is_string($result)
            ? $this->errorResponse($request, '', [], $result)
            : $this->successResponse($request, $result['response_content'])->withCookie($result['refresh_cookie']);

    }

}
