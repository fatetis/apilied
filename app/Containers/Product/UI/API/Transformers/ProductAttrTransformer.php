<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Product\Models\ProductAttr;
use App\Ship\Parents\Transformers\Transformer;

class ProductAttrTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'values'
    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    /**
     * @param ProductAttr $entity
     *
     * @return array
     */
    public function transform(ProductAttr $entity)
    {
        $response = [
//            'object' => 'ProductAttr',
            'id' => $entity->getHashedKey(),
            'name' => $entity->name,
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

    public function includeValues(ProductAttr $product)
    {
        return $this->collection($product->values, new ProductAttrValuesTransformer());
    }

}
