<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Product\Models\ProductAttrValueMap;
use App\Ship\Parents\Transformers\Transformer;

class ProductAttrValueMapTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'value'
    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    /**
     * @param ProductAttrValueMap $entity
     *
     * @return array
     */
    public function transform(ProductAttrValueMap $entity)
    {
        $response = [
//            'object' => 'ProductAttrValueMap',
            'id' => $entity->getHashedKey(),
            'product_id' => $entity->getHashedKey('product_id'),
            'product_attr_id' => $entity->getHashedKey('product_attr_id'),
            'product_attr_map_id' => $entity->getHashedKey('product_attr_map_id'),
            // 'product_attr_value_id' => $entity->getHashedKey('product_attr_value_id'),
            'product_attr_value_id' => $entity->product_attr_value_id,
            'sort' => $entity->sort,
//            'created_at' => $entity->created_at,
//            'updated_at' => $entity->updated_at,
//            'deleted_at' => $entity->deleted_at,

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }

    public function includeValue(ProductAttrValueMap $product)
    {
        return $this->item($product->value, new ProductAttrValuesTransformer());
    }

}
