<?php

namespace App\Containers\Media\UI\API\Transformers;

use App\Containers\Media\Models\Media;
use App\Ship\Parents\Transformers\Transformer;

class MediaTransformer extends Transformer
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
     * @param Media $entity
     *
     * @return array
     */
    public function transform(Media $entity)
    {
        $response = [
//            'object' => 'Media',
            'id' => $entity->getHashedKey(),
//            'type' => $entity->type,
            'link' => $entity->link,
//            'rlink' => $entity->rlink,
//            'size' => $entity->size,
//            'file_ext' => $entity->file_ext,
//            'file_name' => $entity->file_name,
//            'is_lock' => $entity->is_lock,
//            'is_show' => $entity->is_show,
//            'created_at' => $entity->created_at,
//            'updated_at' => $entity->updated_at,
//            'deleted_at' => $entity->deleted_at,
            'original' => [
                'id' => $entity->id
            ]

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }
}
