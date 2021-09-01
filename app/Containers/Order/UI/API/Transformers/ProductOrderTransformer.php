<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Brand\UI\API\Transformers\BrandTransformer;
use App\Containers\Order\Models\ProductOrder;
use App\Ship\Parents\Transformers\Transformer;

class ProductOrderTransformer extends Transformer
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
        'productOrderChild',
        'brand',
        'order'
    ];

    /**
     * @param ProductOrder $entity
     *
     * @return array
     */
    public function transform(ProductOrder $entity)
    {
        $response = [
//            'object' => 'Order',
            'id' => $entity->getHashedKey(),
            'order_id' => $entity->getHashedKey('order_id'),
            'brand_id' => $entity->getHashedKey('brand_id'),
            'message' => $entity->message,
            'order_type' => $entity->order_type,
            'show_status' => $entity->show_status,
            'show_status_text' => ProductOrder::SHOW_STATUS[$entity->show_status] ?? '',
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

    public function includeProductOrderChild(ProductOrder $order)
    {
        return $this->collection($order->productOrderChild, new ProductOrderChildTransformer());
    }

    public function includeBrand(ProductOrder $order)
    {
        return $this->item($order->brand, new BrandTransformer());
    }

    public function includeOrder(ProductOrder $order)
    {
        return $this->item($order->order, new OrderTransformer());
    }
}
