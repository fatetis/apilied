<?php

namespace App\Containers\Product\UI\API\Controllers;

use App\Containers\Product\UI\API\Requests\CreateProductRequest;
use App\Containers\Product\UI\API\Requests\DeleteProductRequest;
use App\Containers\Product\UI\API\Requests\GetAllProductsRequest;
use App\Containers\Product\UI\API\Requests\FindProductByIdRequest;
use App\Containers\Product\UI\API\Requests\GetProductCategoryByPidRequest;
use App\Containers\Product\UI\API\Requests\UpdateProductRequest;
use App\Containers\Product\UI\API\Transformers\ProductTransformer;
use App\Ship\Parents\Controllers\ApiController;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Transporters\DataTransporter;

/**
 * Class Controller
 *
 * @package App\Containers\Product\UI\API\Controllers
 */
class Controller extends ApiController
{
    /**
     * @param GetProductCategoryByPidRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getProductCategoryByPid(GetProductCategoryByPidRequest $request)
    {
        $data = Apiato::call('Product@GetProductCategoryByPidAction', [new DataTransporter($request)]);

        return $this->successResponse($request, $data);
    }

}
