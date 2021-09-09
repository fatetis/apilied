<?php

namespace App\Containers\Login\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Login\UI\API\Requests\CreateMobileVerifyCodeRequest;
use App\Containers\Login\UI\API\Requests\LoginUsingMobileVerifyCodeRequest;
use App\Containers\Login\UI\API\Transformers\VerifyCodeTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

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

    /**
     * 获取验证码
     * @param CreateMobileVerifyCodeRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2021/9/6 10:43
     */
    public function CreateMobileVerifyCode(CreateMobileVerifyCodeRequest $request)
    {
        $result = Apiato::call('Login@CreateMobileVerifyCodeAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $this->transform($result, VerifyCodeTransformer::class));
    }

}
