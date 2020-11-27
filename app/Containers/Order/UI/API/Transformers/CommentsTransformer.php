<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Containers\Order\Models\Comments;
use App\Ship\Parents\Transformers\Transformer;

class CommentsTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'medias',
        'fromuserimg'
    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    /**
     * @param Comments $entity
     *
     * @return array
     */
    public function transform(Comments $entity)
    {
        $response = [
//            'object' => 'Comments',
            'id' => $entity->getHashedKey(),
            'base_id' => $entity->getHashedKey('base_id'),
            'pid' => $entity->getHashedKey('pid'),
            'product_id' => $entity->getHashedKey('product_id'),
//            'user_id' => $entity->user_id,
            'from_name' => $entity->name,
            'to_name' => $entity->to_name,
            'content' => $entity->content,
            'content_rank' => $entity->content_rank,
            'is_quality' => $entity->is_quality ?? 0,
            'is_show' => $entity->is_show ?? 1,
            'is_brand' => $entity->is_brand ?? 0,
            'created_at' => toDateTimeString($entity->created_at),
            'reply_num' => $entity->reply_num ?? 0,
//            'updated_at' => $entity->updated_at,
//            'deleted_at' => $entity->deleted_at,
            'children' => $entity->children ?? [],
        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }

    public function includeMedias(Comments $comments)
    {
        return $this->collection($comments->medias, new CommentMediasTransformer());
    }

    public function includeFromUserimg(Comments $comments)
    {
        return $this->item($comments->fromuserimg, new MediaTransformer());
    }



}
