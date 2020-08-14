<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Containers\Product\Models\ProductMedia;
use App\Ship\Parents\Transformers\Transformer;

class ProductMediaTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'media'
    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    /**
     * @param ProductMedia $entity
     *
     * @return array
     */
    public function transform(ProductMedia $entity)
    {
        $response = [
//            'object' => 'ProductMedia',
            'id' => $entity->getHashedKey(),
            'product_id' => $entity->product_id,
            'media_id' => $entity->media_id,
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

    public function includeMedia(ProductMedia $product)
    {
        return $this->item($product->media, new MediaTransformer());
    }
}
