<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Order\Models\OrderChild;
use App\Ship\Parents\Transformers\Transformer;

class OrderChildTransformer extends Transformer
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

    ];

    /**
     * @param OrderChild $entity
     *
     * @return array
     */
    public function transform(OrderChild $entity)
    {
        $response = [
//            'object' => 'OrderChild',
            'id' => $entity->getHashedKey(),
            'order_id' => $entity->getHashedKey('order_id'),
            'product_id' => $entity->getHashedKey('product_id'),
            'sku_id' => $entity->getHashedKey('sku_id'),
            'product_price' => $entity->product_price,
            'shipping_fee' => $entity->shipping_fee,
            'number' => $entity->number,
            'delivery_id' => $entity->getHashedKey('delivery_id'),
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
}
