<?php

namespace App\Containers\Cart\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Card\UI\API\Requests\CreateCartRequest;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{
    public function index()
    {

    }

    public function createCart(CreateCartRequest $request)
    {
        $result = Apiato::call('Order@OrderAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

}
