<?php

namespace App\Containers\User\UI\API\Transformers;

use App\Containers\User\Models\UserAddress;
use App\Ship\Parents\Transformers\Transformer;

class UserAddressTransformer extends Transformer
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
     * @param UserAddress $entity
     *
     * @return array
     */
    public function transform(UserAddress $entity)
    {
        $response = [
//            'object' => 'UserAddress',
            'id' => $entity->getHashedKey(),
//            'user_id' => $entity->user_id,
            'name' => $entity->name,
//            'region_pid' => $entity->getHashedKey('region_pid'),
//            'region_cid' => $entity->getHashedKey('region_cid'),
            'region_aid' => $entity->getHashedKey('region_aid'),
            'address' => $entity->pca.$entity->address,
            'tel' => $entity->mobile,
            'code' => $entity->code,
            'isDefault' => $entity->is_default,
//            'created_at' => toDateTimeString($entity->created_at),
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
