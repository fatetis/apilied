<?php

namespace App\Containers\Index\UI\API\Controllers;

use App\Containers\Index\UI\API\Requests\GetIndexAdvRequest;
use App\Ship\Parents\Controllers\ApiController;
use Apiato\Core\Foundation\Facades\Apiato;

/**
 * Class Controller
 *
 * @package App\Containers\Index\UI\API\Controllers
 */
class Controller extends ApiController
{
    /**
     * @param GetIndexAdvRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getIndexAdv(GetIndexAdvRequest $request)
    {
        $index = Apiato::call('Index@GetIndexAdvAction', [['city_id' => $request->input('city_id', '')]]);
        return $this->successResponse($request, $index);
    }

}
