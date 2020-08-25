<?php

namespace App\Containers\Brand\UI\API\Transformers;

use App\Containers\Brand\Models\Brand;
use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Ship\Parents\Transformers\Transformer;

class BrandTransformer extends Transformer
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
     * @param Brand $entity
     *
     * @return array
     */
    public function transform(Brand $entity)
    {
        $response = [
//            'object' => 'Brand',
            'id' => $entity->getHashedKey(),
            'name' => $entity->name,
            'category_id' => $entity->category_id,
            'media_id' => $entity->media_id,
            'description' => $entity->description,
            'site_url' => $entity->site_url,
            'sort' => $entity->sort,
            'is_audit' => $entity->is_audit,
            'is_show' => $entity->is_show,
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

    public function includeMedia(Brand $brand)
    {
        return $this->item($brand->media, new MediaTransformer());
    }

}
