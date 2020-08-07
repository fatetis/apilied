<?php

namespace App\Containers\Login\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Transporters\DataTransporter;

class LoginUsingMobileVerifyCodeAction extends Action
{
    public function run(DataTransporter $data)
    {
        $result = Apiato::call('Login@LoginUsingMobileVerifyCodeTask', [
            [
                'user_name' => $data->name,
                'password' => $data->password,
            ]
        ]);

        return $result;
    }
}
