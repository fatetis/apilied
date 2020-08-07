<?php

namespace App\Containers\Login\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Transporters\DataTransporter;

class LoginUsingUserNameAction extends Action
{
    public function run(DataTransporter $data)
    {
        $result = Apiato::call('Login@LoginUsingUserNameTask', [
            [
                'user_name' => $data->name,
                'password' => $data->password,
            ]
        ]);

         return $result;
    }
}
