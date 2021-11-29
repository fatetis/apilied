<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Order\Models\ProductOrderChild;
use App\Containers\Product\UI\API\Transformers\ProductSkuTransformer;
use App\Containers\Product\UI\API\Transformers\ProductTransformer;
use App\Ship\Parents\Transformers\Transformer;

class ProductOrderChildTransformer extends Transformer
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
        'product',
        'productSku'
    ];

    /**
     * @param ProductOrderChild $entity
     *
     * @return array
     */
    public function transform(ProductOrderChild $entity)
    {
        $product_price = explode('.', $entity->product_price);

        $response = [
//            'object' => 'OrderChild',
            'id' => $entity->getHashedKey(),
            'order_id' => $entity->getHashedKey('order_id'),
            'product_order_id' => $entity->getHashedKey('product_order_id'),
            'product_id' => $entity->getHashedKey('product_id'),
            'sku_id' => $entity->sku_id,
            'product_price' => [
                'price' => $entity->product_price,
                'int' => $product_price[0],
                'point' => empty((int)$product_price[1]) ? '' : $product_price[1],
            ],
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

    public function includeProduct(ProductOrderChild $order)
    {
        return $this->item($order->product, new ProductTransformer());
    }

    public function includeProductSku(ProductOrderChild $order)
    {
        return $this->item($order->productSku, new ProductSkuTransformer());
    }
}
