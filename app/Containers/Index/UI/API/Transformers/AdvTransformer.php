<?php

namespace App\Containers\Index\UI\API\Transformers;

use App\Containers\Index\Models\Adv;
use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Ship\Parents\Transformers\Transformer;

class AdvTransformer extends Transformer
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
     * @param Adv $entity
     *
     * @return array
     */
    public function transform(Adv $entity)
    {
        $response = [
//            'object' => 'Adv',
            'id' => $entity->getHashedKey(),
            'name' => $entity->name,
            'desc' => $entity->desc,
            'url' => $entity->url,
//            'media_id' => $entity->media_id,
//            'position_id' => $entity->position_id,
//            'is_show' => $entity->is_show,
//            'sort' => $entity->sort,
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

    public function includeMedia(Adv $user)
    {
        return $this->item($user->media, new MediaTransformer());
    }

}
