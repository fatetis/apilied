<?php

namespace App\Containers\Cart\Tasks;

use App\Containers\Cart\Data\Repositories\CartRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class UpdateOrCreateCartTask extends Task
{

    protected $repository;

    public function __construct(CartRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($array, array $data)
    {
        try {
            return $this->repository->updateOrCreate($array, $data);
        }
        catch (Exception $exception) {
            throw new CreateResourceFailedException();
        }
    }
}
