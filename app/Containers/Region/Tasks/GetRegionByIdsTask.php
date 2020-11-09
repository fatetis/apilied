<?php

namespace App\Containers\Region\Tasks;

use App\Containers\Region\Data\Repositories\RegionRepository;
use App\Ship\Parents\Tasks\Task;

class GetRegionByIdsTask extends Task
{
    protected $repository;

    public function __construct(RegionRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($ids)
    {
        return $this->repository->whereIn('region_id', $ids)->get();
    }
}
