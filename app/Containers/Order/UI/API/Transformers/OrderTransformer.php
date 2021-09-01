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
                'price' => $entity->pay_price ?? 0,
                'int' => !empty($pay_price[0]) ? $pay_price[0] : 0,
                'point' => $pay_price[1] ?? 0,
            ],
            'shipping_price' => $entity->shipping_price,
//            'pay_price' => $entity->pay_price,
            'order_status' => $entity->order_status,
            'order_status_text' => Order::ORDER_STATUS[$entity->order_status],
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

    public function includeProductOrder(Order $order)
    {
        return $this->item($order->productOrder, new ProductOrderTransformer());
    }

    public function includeSnapshot(Order $order)
    {
        return $this->item($order->snapshot, new SnapshotsTransFormer());
    }

}
