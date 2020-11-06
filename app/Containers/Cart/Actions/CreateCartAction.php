<?php

namespace App\Containers\Cart\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class CreateCartAction extends Action
{
    public function run($data)
    {
        $data = [

        ];

        $cart = Apiato::call('Cart@CreateCartTask', [$data]);

        return $cart;
    }
}
