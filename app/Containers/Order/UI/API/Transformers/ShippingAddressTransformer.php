<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Order\Models\ShippingAddress;
use App\Ship\Parents\Transformers\Transformer;

class ShippingAddressTransformer extends Transformer
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
     * @param ShippingAddress $entity
     *
     * @return array
     */
    public function transform(ShippingAddress $entity)
    {
        $response = [
//            'object' => 'ShippingAddress',
            'id' => $entity->getHashedKey(),
            'name' => $entity->name,
            'region_pid' => $entity->region_pid,
            'region_cid' => $entity->region_cid,
            'region_aid' => $entity->region_aid,
            'address' => $entity->address,
            'mobile' => $entity->mobile,
            'code' => $entity->code,
            'created_at' => $entity->created_at,
            'updated_at' => $entity->updated_at,
            'deleted_at' => $entity->deleted_at,

        ];

        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }
}
