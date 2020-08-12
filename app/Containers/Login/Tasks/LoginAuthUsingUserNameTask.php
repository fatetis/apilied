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

    public function run($username)
    {
        $user = Apiato::call('User@FindUserByUserNameTask', [$username]);
        Auth::login($user);
    }
}
