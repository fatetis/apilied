<?php

namespace App\Containers\Order\Tasks;

use App\Containers\Order\Data\Repositories\ShippingAddressRepository;
use App\Ship\Exceptions\CreateResourceFailedException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class CreateShippingAddressTask extends Task
{

    protected $repository;

    public function __construct(ShippingAddressRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run(array $data)
    {
        try {
            return $this->repository->create($data);
        }
        catch (Exception $exception) {
            throw new CreateResourceFailedException();
        }
    }
}
