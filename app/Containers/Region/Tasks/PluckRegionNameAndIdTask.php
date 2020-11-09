<?php

namespace App\Containers\Region\Tasks;

use App\Containers\Region\Data\Repositories\RegionRepository;
use App\Ship\Parents\Tasks\Task;

class PluckRegionNameAndIdTask extends Task
{
    protected $repository;

    public function __construct(RegionRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run()
    {
        return $this->repository->pluck('region_name', 'region_id')->toArray();
    }
}
