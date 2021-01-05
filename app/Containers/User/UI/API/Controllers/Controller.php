<?php

namespace App\Containers\User\UI\API\Controllers;

use Apiato\Core\Foundation\Facades\Apiato;
use App\Containers\Index\UI\API\Transformers\AdvTransformer;
use App\Containers\User\UI\API\Requests\CreateAdminRequest;
use App\Containers\User\UI\API\Requests\DeleteUserAddressRequest;
use App\Containers\User\UI\API\Requests\FindUserAddressByUserIdAndIdOrIsDefaultRequest;
use App\Containers\User\UI\API\Requests\GetUserAddressRequest;
use App\Containers\User\UI\API\Requests\UpdateOrCreateUserAddressRequest;
use App\Containers\User\UI\API\Requests\DeleteUserRequest;
use App\Containers\User\UI\API\Requests\FindUserByIdRequest;
use App\Containers\User\UI\API\Requests\ForgotPasswordRequest;
use App\Containers\User\UI\API\Requests\GetAllUsersRequest;
use App\Containers\User\UI\API\Requests\GetAuthenticatedUserRequest;
use App\Containers\User\UI\API\Requests\RegisterUserRequest;
use App\Containers\User\UI\API\Requests\ResetPasswordRequest;
use App\Containers\User\UI\API\Requests\UpdateUserRequest;
use App\Containers\User\UI\API\Requests\UserCenterRequest;
use App\Containers\User\UI\API\Transformers\FindUserAddressTransformer;
use App\Containers\User\UI\API\Transformers\UserAddressTransformer;
use App\Containers\User\UI\API\Transformers\UserPrivateProfileTransformer;
use App\Containers\User\UI\API\Transformers\UserTransformer;
use App\Ship\Parents\Controllers\ApiController;
use App\Ship\Transporters\DataTransporter;

/**
 * Class Controller.
 *
 * @author Mahmoud Zalt <mahmoud@zalt.me>
 */
class Controller extends ApiController
{

    /**
     * @param \App\Containers\User\UI\API\Requests\RegisterUserRequest $request
     *
     * @return  mixed
     */
    public function registerUser(RegisterUserRequest $request)
    {
        $user = Apiato::call('User@RegisterUserAction', [new DataTransporter($request)]);

        return $this->transform($user, UserTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\CreateAdminRequest $request
     *
     * @return  mixed
     */
    public function createAdmin(CreateAdminRequest $request)
    {
        $admin = Apiato::call('User@CreateAdminAction', [new DataTransporter($request)]);

        return $this->transform($admin, UserTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\UpdateUserRequest $request
     *
     * @return  mixed
     */
    public function updateUser(UpdateUserRequest $request)
    {
        $user = Apiato::call('User@UpdateUserAction', [new DataTransporter($request)]);

        return $this->transform($user, UserTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\DeleteUserRequest $request
     *
     * @return  \Illuminate\Http\JsonResponse
     */
    public function deleteUser(DeleteUserRequest $request)
    {
        Apiato::call('User@DeleteUserAction', [new DataTransporter($request)]);

        return $this->noContent();
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\GetAllUsersRequest $request
     *
     * @return  mixed
     */
    public function getAllUsers(GetAllUsersRequest $request)
    {
        $users = Apiato::call('User@GetAllUsersAction');

        return $this->transform($users, UserTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\GetAllUsersRequest $request
     *
     * @return  mixed
     */
    public function getAllClients(GetAllUsersRequest $request)
    {
        $users = Apiato::call('User@GetAllClientsAction');

        return $this->transform($users, UserTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\GetAllUsersRequest $request
     *
     * @return  mixed
     */
    public function getAllAdmins(GetAllUsersRequest $request)
    {
        $users = Apiato::call('User@GetAllAdminsAction');

        return $this->transform($users, UserTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\FindUserByIdRequest $request
     *
     * @return  mixed
     */
    public function findUserById(FindUserByIdRequest $request)
    {
        $user = Apiato::call('User@FindUserByIdAction', [new DataTransporter($request)]);

        return $this->transform($user, UserTransformer::class);
    }

    /**
     * @param GetAuthenticatedUserRequest $request
     *
     * @return mixed
     */
    public function getAuthenticatedUser(GetAuthenticatedUserRequest $request)
    {
        $user = Apiato::call('User@GetAuthenticatedUserAction');

        return $this->transform($user, UserPrivateProfileTransformer::class);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\ResetPasswordRequest $request
     *
     * @return  \Illuminate\Http\JsonResponse
     */
    public function resetPassword(ResetPasswordRequest $request)
    {
        Apiato::call('User@ResetPasswordAction', [new DataTransporter($request)]);

        return $this->noContent(204);
    }

    /**
     * @param \App\Containers\User\UI\API\Requests\ForgotPasswordRequest $request
     *
     * @return  \Illuminate\Http\JsonResponse
     */
    public function forgotPassword(ForgotPasswordRequest $request)
    {
        Apiato::call('User@ForgotPasswordAction', [new DataTransporter($request)]);

        return $this->noContent(202);
    }

    /**
     * 创建与更新用户收货地址
     * @param UpdateOrCreateUserAddressRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/9 00099:18
     */
    public function updateOrCreateUserAddress(UpdateOrCreateUserAddressRequest $request)
    {
        $result = Apiato::call('User@UpdateOrCreateUserAddressAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, UserAddressTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 获取用户收货地址
     * @param GetUserAddressRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/9 000913:42
     */
    public function getUserAddress(GetUserAddressRequest $request)
    {
        $result = Apiato::call('User@GetUserAddressAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, UserAddressTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 查询一条用户的收货地址
     * @param FindUserAddressByUserIdAndIdOrIsDefaultRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/9 000914:26
     */
    public function findUserAddressByUserIdAndId(FindUserAddressByUserIdAndIdOrIsDefaultRequest $request)
    {
        $result = Apiato::call('User@FindUserAddressByUserIdAndIdOrIsDefaultAction', [new DataTransporter($request)]);
        $result = is_string($result) ? $result : $this->transform($result, FindUserAddressTransformer::class);
        return $this->successResponse($request, $result);
    }

    /**
     * 删除收货地址
     * @param DeleteUserAddressRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2020/11/10 001011:51
     */
    public function deleteUserAddress(DeleteUserAddressRequest $request)
    {
        $result = Apiato::call('User@DeleteUserAddressAction', [new DataTransporter($request)]);
        return $this->successResponse($request, $result);
    }

    /**
     * 用户中心数据
     * @param UserCenterRequest $request
     * @return false|\Illuminate\Http\JsonResponse|string
     * Author: fatetis
     * Date:2021/1/5 000510:26
     */
    public function userCenter(UserCenterRequest $request)
    {
        $result = Apiato::call('User@UserCenterAction', [new DataTransporter($request)]);
        $result['user_info'] = $this->transform($result['user_info'], UserTransformer::class);
        $result['adv'] = $this->transform($result['adv'], AdvTransformer::class);
        return $this->successResponse($request, $result);
    }

}
