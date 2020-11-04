<?php

namespace App\Containers\Pay\Tasks;

use App\Containers\Pay\Data\Repositories\PayLogRepository;
use App\Ship\Parents\Tasks\Task;

class UpdateOrCreatePayLogByOrdernoTask extends Task
{
    protected $repository;

    public function __construct(PayLogRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($filter_data, $data)
    {
        return $this->repository->updateOrCreate($filter_data, $data);
    }
}
