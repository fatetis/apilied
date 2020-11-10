<?php

namespace App\Containers\Cart\UI\API\Transformers;

use App\Containers\Cart\Models\Cart;
use App\Containers\Product\UI\API\Transformers\ProductSkuTransformer;
use App\Ship\Parents\Transformers\Transformer;

class CartTransformer extends Transformer
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
        'sku'
    ];

    /**
     * @param Cart $entity
     *
     * @return array
     */
    public function transform(Cart $entity)
    {
        $response = [
//            'object' => 'Cart',
            'id' => $entity->getHashedKey(),
//            'user_id' => $entity->user_id,
            'sku_id' => $entity->getHashedKey('sku_id'),
            'number' => $entity->number,
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

    public function includeSku(Cart $cart)
    {
        return $this->item($cart->sku, new ProductSkuTransformer());
    }
}
