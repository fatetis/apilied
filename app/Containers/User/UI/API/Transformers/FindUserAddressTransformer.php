<?php

namespace App\Containers\User\UI\API\Transformers;

use App\Containers\User\Models\UserAddress;
use App\Ship\Parents\Transformers\Transformer;

class FindUserAddressTransformer extends Transformer
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
            'province' => $entity->province,
            'city' => $entity->city,
            'county' => $entity->county,
            'areaCode' => $entity->area_code,
            'addressDetail' => $entity->address,
            'tel' => $entity->mobile,
            'postalCode' => $entity->code,
            'isDefault' => $entity->is_default,
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
