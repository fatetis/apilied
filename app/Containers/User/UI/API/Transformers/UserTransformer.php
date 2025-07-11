<?php

namespace App\Containers\User\UI\API\Transformers;

use App\Containers\Authorization\UI\API\Transformers\RoleTransformer;
use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Containers\User\Models\User;
use App\Ship\Parents\Transformers\Transformer;

/**
 * Class UserTransformer.
 *
 * @author Mahmoud Zalt <mahmoud@zalt.me>
 */
class UserTransformer extends Transformer
{

    /**
     * @var  array
     */
    protected $availableIncludes = [
        'roles',
    ];

    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'media'
    ];

    /**
     * @param \App\Containers\User\Models\User $user
     *
     * @return array
     */
    public function transform(User $user)
    {
        $response = [
//            'object'               => 'User',
            'id'                   => $user->getHashedKey(),
            'name'                 => $user->name,
            'email'                => $user->email,
            'mobile'                => substr_replace($user->mobile, '****', 3, 4),
//            'confirmed'            => $user->confirmed,
//            'nickname'             => $user->nickname,
            'gender'               => $user->gender,
            'birth'                => $user->birth,

//            'social_auth_provider' => $user->social_provider,
//            'social_id'            => $user->social_id,
//            'social_avatar'        => [
//                'avatar'   => $user->social_avatar,
//                'original' => $user->social_avatar_original,
//            ],

            'created_at'           => toDateTimeString($user->created_at),
//            'updated_at'           => $user->updated_at,
//            'readable_created_at'  => $user->created_at === null ? '' : $user->created_at->diffForHumans(),
//            'readable_updated_at'  => $user->updated_at === null ? '' : $user->updated_at->diffForHumans(),
        ];

        $response = $this->ifAdmin([
            'real_id'    => $user->id,
            'deleted_at' => $user->deleted_at,
        ], $response);

        return $response;
    }

    public function includeRoles(User $user)
    {
        return $this->collection($user->roles, new RoleTransformer());
    }

    public function includeMedia(User $user)
    {
        if(empty($user->media)) return null;
        return $this->item($user->media, new MediaTransformer());
    }

}
