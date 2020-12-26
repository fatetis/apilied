<?php

namespace App\Containers\Cart\Tasks;

use App\Containers\Cart\Data\Repositories\CartRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Exceptions\Exception;
use App\Ship\Parents\Tasks\Task;

class FirstCartBySkuIdAndUserIdTask extends Task
{

    protected $repository;

    public function __construct(CartRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($skuid, $user_id)
    {
        try {
            return $this->repository->findWhere([
                'sku_id' => $skuid,
                'user_id' => $user_id,
            ])->first();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
