<?php

namespace App\Containers\Cart\Tasks;

use App\Containers\Cart\Data\Repositories\CartRepository;
use App\Ship\Exceptions\DeleteResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class DeleteCartByUserIdAndIdTask extends Task
{

    protected $repository;

    public function __construct(CartRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $user_id)
    {
        try {
            return $this->repository->where('user_id', $user_id)->where('id', $id)->delete();
        }
        catch (Exception $exception) {
            throw new DeleteResourceFailedException();
        }
    }
}
