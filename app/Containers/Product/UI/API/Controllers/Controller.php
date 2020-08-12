<?php

namespace App\Containers\Product\UI\API\Controllers;

use App\Containers\Product\UI\API\Requests\FindProductDetailByIdRequest;
use App\Containers\Product\UI\API\Requests\GetProductCategoryByPidRequest;
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
     * @param FindProductDetailByIdRequest $request
     * @return false|string
     * Author: fatetis
     * Date:2020/8/6 000611:19
     */
    public function findProductDetailById(FindProductDetailByIdRequest $request)
    {
        $data = Apiato::call('Product@FindProductDetailByIdAction', [new DataTransporter($request)]);

        return $this->successResponse($request, $data);

    }


}
