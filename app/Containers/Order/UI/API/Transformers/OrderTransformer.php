<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Order\Models\Order;
use App\Ship\Parents\Transformers\Transformer;

class OrderTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [

    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [
        'productOrder',
        'snapshot'
    ];

    /**
     * @param Order $entity
     *
     * @return array
     */
    public function transform(Order $entity)
    {
        $origin_price = explode('.', $entity->origin_price);
        $price = explode('.', $entity->price);
        $pay_price = explode('.', $entity->pay_price);
        $discount_price = explode('.', $entity->discount_price);
        $shipping_price = explode('.', $entity->shipping_price);
        $response = [
            'id' => $entity->getHashedKey(),
            'orderno' => $entity->orderno,
//            'paidno' => $entity->paidno,
//            'user_id' => $entity->user_id,
            'origin_price' => [
                'price' => $entity->origin_price,
                'int' => $origin_price[0],
                'point' => empty((int)$origin_price[1]) ? '' : $origin_price[1],
            ],
            'price' => [
                'price' => $entity->price,
                'int' => $price[0],
                'point' => empty((int)$price[1]) ? '' : $price[1],
            ],
            'pay_price' => [
                'price' => $entity->pay_price ?? 0,
                'int' => empty((int)$pay_price[0]) ? 0 : $pay_price[0],
                'point' => empty((int)($pay_price[1] ?? 0)) ? '' : $pay_price[1],
            ],
            'discount_price' => [
                'price' => $entity->discount_price ?? 0,
                'int' => empty((int)$discount_price[0]) ? 0 : $discount_price[0],
                'point' => empty((int)($discount_price[1] ?? 0)) ? '' : $discount_price[1],
            ],
            'shipping_price' => [
                'price' => $entity->shipping_price ?? 0,
                'int' => empty((int)$shipping_price[0]) ? 0 : $shipping_price[0],
                'point' => empty((int)($shipping_price[1] ?? 0)) ? '' : $shipping_price[1],
            ],
            'order_status' => $entity->order_status,
            'order_status_text' => Order::ORDER_STATUS[$entity->order_status],
            'pay_status' => $entity->pay_status,
//            'source' => $entity->source,
            'created_at' => toDateTimeString($entity->created_at),
//            'updated_at' => $entity->updated_at,
//            'deleted_at' => $entity->deleted_at,

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }

    public function includeProductOrder(Order $order)
    {
        return $this->collection($order->productOrder, new ProductOrderTransformer());
    }

    public function includeSnapshot(Order $order)
    {
        return $this->item($order->snapshot, new SnapshotsTransFormer());
    }

}
