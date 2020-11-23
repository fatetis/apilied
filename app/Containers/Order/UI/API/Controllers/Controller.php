<?php

namespace App\Containers\Order\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Order\UI\API\Requests\CreateCommentsRequest;
use App\Containers\Order\UI\API\Requests\FindOrderBaseByOrderNoRequest;
use App\Containers\Order\UI\API\Requests\GetAllOrderBaseByStatusRequest;
use App\Containers\Order\UI\API\Requests\HandleSyncCallBackToWeChatRequest;
use App\Containers\Order\UI\API\Requests\OrderRequest;
use App\Containers\Order\UI\API\Requests\UpdateOrderBaseRequest;
use App\Containers\Order\UI\API\Transformers\CommentsTransformer;
use App\Containers\Order\UI\API\Transformers\OrderBaseTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

class Controller extends ApiController
{

    /**
     * 下单接口
     * @param OrderRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/4 000415:09
     */
    public function order(OrderRequest $request)
    {
        // sku_id num address_id
        $result = Apiato::call('Order@CreateOrderAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, OrderBaseTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 异步通知接口
     * @param HandleSyncCallBackToWeChatRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/4 000415:08
     */
    public function handleSyncCallBackToWeChat(HandleSyncCallBackToWeChatRequest $request)
    {
        $result = Apiato::call('Order@HandleSyncCallBackToWeChatAction', [new DataTransporter($request)]);
        $this->successResponse($request, $result);
        return $result;
    }

    /**
     * 获取一条订单详情的数据
     * @param FindOrderBaseByOrderNoRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/16 001619:10
     */
    public function findOrderBaseByOrderNo(FindOrderBaseByOrderNoRequest $request)
    {
        $result = Apiato::call('Order@FindOrderBaseByOrderNoAndUserIdAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, OrderBaseTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取订单列表的数据
     * @param GetAllOrderBaseByStatusRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/17 001710:34
     */
    public function getAllOrderBaseByStatus(GetAllOrderBaseByStatusRequest $request)
    {
        $result = Apiato::call('Order@GetAllOrderBaseByStatusAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, OrderBaseTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 更新订单信息
     * @param UpdateOrderBaseRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/17 001717:02
     */
    public function updateOrderBase(UpdateOrderBaseRequest $request)
    {
        $result = Apiato::call('Order@UpdateOrderBaseAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

    public function createComments(CreateCommentsRequest $request)
    {
        $result = Apiato::call('Order@CreateCommentsAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, CommentsTransformer::class);
        return $this->successResponse($request, $result);
    }






}
