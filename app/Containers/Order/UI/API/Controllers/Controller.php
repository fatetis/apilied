<?php

namespace App\Containers\Order\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Order\UI\API\Requests\PreValidateBuyProductRequest;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{
    public function preValidateBuyProduct(PreValidateBuyProductRequest $request)
    {
        $result = Apiato::call('Order@PreValidateBuyProductAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

}
