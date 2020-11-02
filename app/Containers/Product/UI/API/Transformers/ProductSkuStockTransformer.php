<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Product\Models\ProductSkuStock;
use App\Ship\Parents\Transformers\Transformer;

class ProductSkuStockTransformer extends Transformer
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
     * @param ProductSkuStock $entity
     *
     * @return array
     */
    public function transform(ProductSkuStock $entity)
    {
        $response = [
//            'object' => 'ProductSkuStock',
            'id' => $entity->getHashedKey(),
            'product_id' => $entity->product_id,
            'sku_id' => $entity->sku_id,
            'quantity' => $entity->quantity,
            'warn_number' => $entity->warn_number,
            'created_at' => toDateTimeString($entity->created_at),
            'updated_at' => toDateTimeString($entity->updated_at),
            'deleted_at' => toDateTimeString($entity->deleted_at),

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }
}
