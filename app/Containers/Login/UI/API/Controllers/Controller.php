<?php

namespace App\Containers\Login\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Login\UI\API\Requests\LoginUsingMobileVerifyCodeRequest;
use App\Containers\Login\UI\API\Requests\LoginUsingUserNameRequest;
use App\Ship\Parents\Controllers\ApiController;

class Controller extends ApiController
{

    public function loginUsingUserName(LoginUsingUserNameRequest $request)
    {
        $result = Apiato::call('Login@LoginUsingUserNameAction', [$request]);

        return $result;
    }

    public function loginUsingMobileVerifyCode(LoginUsingMobileVerifyCodeRequest $request)
    {
        $result = Apiato::call('Login@LoginUsingMobileVerifyCodeAction', [$request]);

        return $result;
    }

}
