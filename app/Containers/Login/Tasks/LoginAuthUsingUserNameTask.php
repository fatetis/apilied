<?php

namespace App\Containers\Login\Tasks;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Support\Facades\Auth;

class LoginAuthUsingUserNameTask extends Task
{

    public function __construct()
    {
        // ..
    }

    public function run($loginAttribute, $username)
    {
        $user = $loginAttribute == 'mobile'
            ? Apiato::call('User@FindUserByMobileTask', [$username])
            : (
            $loginAttribute == 'username'
                ? Apiato::call('User@FindUserByUserNameTask', [$username])
                : Apiato::call('User@FindUserByEmailTask', [$username])
            );
        Auth::login($user);
    }
}
