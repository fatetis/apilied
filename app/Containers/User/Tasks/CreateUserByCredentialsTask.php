<?php

namespace App\Containers\User\Tasks;

use App\Containers\User\Data\Repositories\UserRepository;
use App\Containers\User\Models\User;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;
use Illuminate\Support\Facades\Hash;

/**
 * Class CreateUserByCredentialsTask.
 *
 * @author Mahmoud Zalt <mahmoud@zalt.me>
 */
class CreateUserByCredentialsTask extends Task
{

    protected $repository;

    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * @param bool $isClient
     * @param string $mobile
     * @param string|null $email
     * @param string|null $password
     * @param string|null $name
     * @param string|null $gender
     * @param string|null $birth
     * @return User
     * Author: fatetis
     * Date:2020/8/13 001315:17
     */
    public function run(
        bool $isClient = true,
        string $mobile,
        string $email = null,
        string $password = null,
        string $name = null,
        string $gender = null,
        string $birth = null
    ): User {

        try {
            // create new user
            $user = $this->repository->create([
                'mobile' => $mobile,
                'password'  => empty($password) ? null : Hash::make($password),
                'email'     => $email,
                'name'      => $name,
                'gender'    => $gender,
                'birth'     => $birth,
                'is_client' => $isClient,
            ]);

        } catch (Exception $e) {
            throw (new CreateResourceFailedException())->debug($e);
        }

        return $user;
    }

}
