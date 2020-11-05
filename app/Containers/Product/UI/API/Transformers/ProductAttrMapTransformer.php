<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Product\Models\ProductAttrMap;
use App\Ship\Parents\Transformers\Transformer;

class ProductAttrMapTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'attr',
        'values'
    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    /**
     * @param ProductAttrMap $entity
     *
     * @return array
     */
    public function transform(ProductAttrMap $entity)
    {
        $response = [
//            'object' => 'ProductAttrMap',
            'id' => $entity->getHashedKey(),
            'product_id' => $entity->getHashedKey('product_id'),
            'product_attr_id' => $entity->getHashedKey('product_attr_id'),
            'sort' => $entity->sort,
            'created_at' => toDateTimeString($entity->created_at),
            'updated_at' => toDateTimeString($entity->updated_at),
//            'deleted_at' => $entity->deleted_at,

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }

    public function includeAttr(ProductAttrMap $product)
    {
        return $this->item($product->attr, new ProductAttrTransformer());
    }

    public function includeValues(ProductAttrMap $product)
    {
        return $this->collection($product->values, new ProductAttrValueMapTransformer());
    }

}
