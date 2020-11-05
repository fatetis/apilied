<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Product\Models\ProductAttrValues;
use App\Ship\Parents\Transformers\Transformer;

class ProductAttrValuesTransformer extends Transformer
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
     * @param ProductAttrValues $entity
     *
     * @return array
     */
    public function transform(ProductAttrValues $entity)
    {
        $response = [
//            'object' => 'ProductAttrValues',
            'id' => $entity->getHashedKey(),
            'product_attr_id' => $entity->getHashedKey('product_attr_id'),
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


}
