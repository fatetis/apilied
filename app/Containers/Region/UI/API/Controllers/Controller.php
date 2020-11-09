<?php

namespace App\Containers\Region\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Region\UI\API\Requests\GetRegionPCARequest;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{
    public function getRegionPCA(GetRegionPCARequest $request)
    {
        $result = Apiato::call('Region@GetRegionPCAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

}
