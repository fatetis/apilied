<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Transformers\Transformer;

class OrderBaseTransformer extends Transformer
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
        'order',
        'snapshot'
    ];

    /**
     * @param OrderBase $entity
     *
     * @return array
     */
    public function transform(OrderBase $entity)
    {
        $price = explode('.', $entity->price);
        $pay_price = explode('.', $entity->pay_price);
        $response = [
//            'object' => 'OrderBase',
            'id' => $entity->getHashedKey(),
            'orderno' => $entity->orderno,
//            'paidno' => $entity->paidno,
//            'user_id' => $entity->user_id,
//            'price' => $entity->price,
            'price' => [
                'price' => $entity->price,
                'int' => $price[0],
                'point' => $price[1],
            ],
            'pay_price' => [
                'price' => $entity->pay_price,
                'int' => $pay_price[0] ?? 0,
                'point' => $pay_price[1] ?? 0,
            ],
            'shipping_price' => $entity->shipping_price,
//            'pay_price' => $entity->pay_price,
            'order_status' => $entity->order_status,
            'order_status_text' => OrderBase::ORDER_STATUS[$entity->order_status],
//            'pay_status' => $entity->pay_status,
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

    public function includeOrder(OrderBase $order)
    {
        return $this->item($order->order, new OrderTransformer());
    }

    public function includeSnapshot(OrderBase $order)
    {
        return $this->item($order->snapshot, new SnapshotsTransFormer());
    }

}
