<?php

namespace App\Containers\Cart\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Cart\UI\API\Requests\GetCartRequest;
use App\Containers\Cart\UI\API\Requests\UpdateOrCreateCartRequest;
use App\Containers\Cart\UI\API\Requests\DeleteCartRequest;
use App\Containers\Cart\UI\API\Transformers\CartTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{

    /**
     * 创建与更新购物车数据
     * @param UpdateOrCreateCartRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/10 001011:20
     */
    public function updateOrCreateCart(UpdateOrCreateCartRequest $request)
    {
        $result = Apiato::call('Cart@UpdateOrCreateCartAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $this->transform($result, CartTransformer::class));
    }

    /**
     * 删除购物车数据
     * @param DeleteCartRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/10 001011:20
     */
    public function deleteCart(DeleteCartRequest $request)
    {
        $result = Apiato::call('Cart@DeleteCartAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取我的购物车数据
     * @param GetCartRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/10 001014:26
     */
    public function getCart(GetCartRequest $request)
    {
        $result = Apiato::call('Cart@GetCartAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $this->transform($result, CartTransformer::class));
    }


}
