<?php

namespace App\Containers\Order\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Order\UI\API\Requests\HandleSyncCallBackToWeChatRequest;
use App\Containers\Order\UI\API\Requests\OrderRequest;
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
        $result = Apiato::call('Order@OrderAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $this->transform($result, OrderBaseTransformer::class));
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





}
