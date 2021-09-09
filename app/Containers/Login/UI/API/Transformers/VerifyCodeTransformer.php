<?php

namespace App\Containers\Login\UI\API\Transformers;

use App\Containers\Login\Models\VerifyCode;
use App\Ship\Parents\Transformers\Transformer;

class VerifyCodeTransformer extends Transformer
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
     * @param VerifyCode $entity
     *
     * @return array
     */
    public function transform(VerifyCode $entity)
    {
        $response = [
//            'id' => $entity->getHashedKey(),
            'account' => $entity->account,
//            'type' => $entity->type,
            'code' => $entity->code,
//            'using_type' => $entity->using_type,
//            'repeat_num' => $entity->repeat_num,
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
