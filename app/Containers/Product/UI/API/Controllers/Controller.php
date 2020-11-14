<?php

namespace App\Containers\Product\UI\API\Controllers;

use App\Containers\Product\UI\API\Requests\FindProductByIdRequest;
use App\Containers\Product\UI\API\Requests\FindProductBySkuIdRequest;
use App\Containers\Product\UI\API\Requests\GetProductByCategoryIdRequest;
use App\Containers\Product\UI\API\Requests\GetProductCategoryByPidRequest;
use App\Containers\Product\UI\API\Requests\ValidateProductBySkuIdAndNumRequest;
use App\Containers\Product\UI\API\Transformers\ProductSkuTransformer;
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
     * 根据product_id获取一条产品数据
     * @param FindProductByIdRequest $request
     * @return false|string
     * Author: fatetis
     * Date:2020/8/6 000611:19
     */
    public function findProductById(FindProductByIdRequest $request)
    {
        $result = Apiato::call('Product@FindProductByIdAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, ProductTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 根据sku_id获取一条产品数据
     * @param FindProductBySkuIdRequest $request
     * @return false|string
     * Author: fatetis
     * Date:2020/8/6 000611:19
     */
    public function findProductBySkuId(FindProductBySkuIdRequest $request)
    {
        $result = Apiato::call('Product@FindProductBySkuIdAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, ProductSkuTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 根据分类id获取产品列表
     * @param GetProductByCategoryIdRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/9/14 001410:03
     */
    public function getProductByCategoryId(GetProductByCategoryIdRequest $request)
    {
        $result = Apiato::call('Product@GetProductByCategoryIdAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, ProductTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 校验产品是否符合购买条件
     * @param ValidateProductBySkuIdAndNumRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/9/28 002813:58
     */
    public function validateProductBySkuIdAndNum(ValidateProductBySkuIdAndNumRequest $request)
    {
        $result = Apiato::call('Product@ValidateProductBySkuIdAndNumAction', [new DataTransporter($request)]);
        return is_string($result) ? $this->errorResponse($request, '', [], $result) : $this->successResponse($request);
    }




}
