<?php

namespace App\Containers\Pay\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Pay\UI\API\Requests\BalancePayRequest;
use App\Containers\Pay\UI\API\Requests\PayRequest;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{

    public function pay(PayRequest $request)
    {
        $result = Apiato::call('Order@CreateOrderAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

    public function balancePay(BalancePayRequest $request)
    {
        $result = Apiato::call('Order@HandleSyncCallBackToBalanceAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

}
