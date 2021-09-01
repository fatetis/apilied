<?php

namespace App\Containers\Order\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Order\UI\API\Requests\FindCommentsByIdRequest;
use App\Containers\Order\UI\API\Requests\GetCommentsByPidRequest;
use App\Containers\Order\UI\API\Requests\UpdateOrCreateCommentsRequest;
use App\Containers\Order\UI\API\Requests\FindOrderByOrderNoRequest;
use App\Containers\Order\UI\API\Requests\GetAllOrderByStatusRequest;
use App\Containers\Order\UI\API\Requests\GetCommentsRequest;
use App\Containers\Order\UI\API\Requests\HandleSyncCallBackToWeChatRequest;
use App\Containers\Order\UI\API\Requests\OrderRequest;
use App\Containers\Order\UI\API\Requests\UpdateOrderBaseRequest;
use App\Containers\Order\UI\API\Transformers\CommentsTransformer;
use App\Containers\Order\UI\API\Transformers\OrderTransformer;
use App\Containers\Order\UI\API\Transformers\ProductOrderTransformer;
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
        $result = is_string($result) ? $result : $this->transform($result, OrderTransformer::class);
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
     * @param FindOrderByOrderNoRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/16 001619:10
     */
    public function findOrderByOrderNo(FindOrderByOrderNoRequest $request)
    {
        $result = Apiato::call('Order@FindOrderByOrderNoAndUserIdAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, OrderTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取订单列表的数据
     * @param GetAllOrderByStatusRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/17 001710:34
     */
    public function getAllOrderByStatus(GetAllOrderByStatusRequest $request)
    {
        $result = Apiato::call('Order@GetAllOrderByStatusAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, ProductOrderTransformer::class);
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

    /**
     * 创建一条订单评论
     * @param UpdateOrCreateCommentsRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/23 002319:18
     */
    public function updateOrCreateComments(UpdateOrCreateCommentsRequest $request)
    {
        $result = Apiato::call('Order@UpdateOrCreateCommentsAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, CommentsTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取父级评论
     * @param GetCommentsRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/26 002616:22
     */
    public function getComments(GetCommentsRequest $request)
    {
        $result = Apiato::call('Order@GetCommentsAction', [new DataTransporter($request)]);
        collect($result->items())->map(function($value) {
            if(!empty($value['children'])) {
                $value['children'] = $this->transform($value['child'], CommentsTransformer::class);
            }
        });
        $result = is_string($result) ? $result : $this->transform($result, CommentsTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取一条父级评论下的所有评论
     * @param GetCommentsByPidRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/26 002617:00
     */
    public function getCommentsByPid(GetCommentsByPidRequest $request)
    {
        $result = Apiato::call('Order@GetCommentsByPidAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, CommentsTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取一条评论内容
     * @param FindCommentsByIdRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/27 002717:09
     */
    public function findCommentsById(FindCommentsByIdRequest $request)
    {
        $result = Apiato::call('Order@FindCommentsByIdAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $this->transform($result, CommentsTransformer::class));
    }






}
