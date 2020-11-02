<?php

namespace App\Containers\Order\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Order\UI\API\Requests\OrderRequest;
use App\Containers\Order\UI\API\Transformers\OrderBaseTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{
    // sku_id num address_id
    public function order(OrderRequest $request)
    {
        $result = Apiato::call('Order@OrderAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $this->transform($result, OrderBaseTransformer::class));
    }

    public function payPage()
    {

    }

    public function pay()
    {

    }

}
