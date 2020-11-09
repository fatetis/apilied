<?php

namespace App\Containers\Region\Tasks;

use App\Containers\Region\Data\Repositories\RegionRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Exceptions\Exception;
use App\Ship\Parents\Tasks\Task;

class PluckRegionByGradeToCodeAndNameTask extends Task
{

    protected $repository;

    public function __construct(RegionRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($grade)
    {
        try {
            return $this->repository->where('region_grade', $grade)->pluck('region_name', 'region_code')->toArray();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
