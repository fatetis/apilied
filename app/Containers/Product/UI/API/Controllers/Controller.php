<?php

namespace App\Containers\Product\UI\API\Controllers;

use App\Containers\Product\UI\API\Requests\FindProductByIdRequest;
use App\Containers\Product\UI\API\Requests\GetProductByCategoryIdRequest;
use App\Containers\Product\UI\API\Requests\GetProductCategoryByPidRequest;
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
     * 获取产品分类
     * @param GetProductCategoryByPidRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getProductCategoryByPid(GetProductCategoryByPidRequest $request)
    {
        $data = Apiato::call('Product@GetProductCategoryByPidAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $data);
    }

    /**
     * 获取一条产品数据
     * @param FindProductByIdRequest $request
     * @return false|string
     * Author: fatetis
     * Date:2020/8/6 000611:19
     */
    public function findProductById(FindProductByIdRequest $request)
    {
        $data = Apiato::call('Product@FindProductByIdAction', [new DataTransporter($request)]);

        return $this->successResponse($request, $this->transform($data, ProductTransformer::class));
//        return $this->successResponse($request, $data);
    }

    public function getProductByCategoryId(GetProductByCategoryIdRequest $request)
    {
        $data = Apiato::call('Product@GetProductByCategoryIdAction', [new DataTransporter($request)]);


        return $this->successResponse($request, $this->transform($data, ProductTransformer::class));
    }



}
