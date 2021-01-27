<?php

namespace App\Containers\Order\UI\API\Transformers;

use App\Containers\Order\Models\Snapshots;
use App\Ship\Parents\Transformers\Transformer;

class SnapshotsTransFormer extends Transformer
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
     * @param Snapshots $entity
     *
     * @return array
     */
    public function transform(Snapshots $entity)
    {
        $response = [
//            'object' => 'Snapshots',
            'id' => $entity->getHashedKey(),
//            'type' => $entity->type,
//            'id_value' => $entity->getHashedKey($entity->id_value),
//            'id_value' => $entity->id_value,
            'value' => $entity->value,
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
}
