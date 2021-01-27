<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Brand\UI\API\Transformers\BrandTransformer;
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
        'orderchild',
        'brand'
    ];

    /**
     * @param Order $entity
     *
     * @return array
     */
    public function transform(Order $entity)
    {
        $response = [
//            'object' => 'Order',
            'id' => $entity->getHashedKey(),
            'base_id' => $entity->getHashedKey('base_id'),
            'brand_id' => $entity->getHashedKey('brand_id'),
            'message' => $entity->message,
            'order_type' => $entity->order_type,
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

    public function includeOrderChild(Order $order)
    {
        return $this->collection($order->orderchild, new OrderChildTransformer());
    }

    public function includeBrand(Order $order)
    {
        return $this->item($order->brand, new BrandTransformer());
    }
}
