<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Media\Models\Media;
use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Containers\Order\Models\CommentMedias;
use App\Ship\Parents\Transformers\Transformer;

class CommentMediasTransformer extends Transformer
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
     * @param CommentMedias $entity
     *
     * @return array
     */
    public function transform(CommentMedias $entity)
    {
        $response = [
//            'object' => 'CommentMedias',
            'id' => $entity->getHashedKey(),
            'comment_id' => $entity->getHashedKey('comment_id'),
            'media_id' => $entity->getHashedKey('media_id'),
            'sort' => $entity->sort,
            'created_at' => toDateTimeString($entity->created_at),
//            'updated_at' => $entity->updated_at,
//            'deleted_at' => $entity->deleted_at,

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }

    public function includeMedia(CommentMedias $commentMedias)
    {
        return $this->item($commentMedias->media, new MediaTransformer());
    }
}
