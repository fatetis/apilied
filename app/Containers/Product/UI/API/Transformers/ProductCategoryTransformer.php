<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Product\Models\ProductCategory;
use App\Ship\Parents\Transformers\Transformer;

class ProductCategoryTransformer extends Transformer
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
     * @param ProductCategory $entity
     *
     * @return array
     */
    public function transform(ProductCategory $entity)
    {
        $response = [
//            'object' => 'ProductCategory',
            'id' => $entity->getHashedKey(),
            'pid' => $entity->pid,
            'name' => $entity->name,
            'is_rec' => $entity->is_rec,
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
