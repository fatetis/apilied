<?php

namespace App\Containers\Region\Tasks;

use App\Containers\Region\Data\Repositories\RegionRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindRegionByCodeAndGradeTask extends Task
{

    protected $repository;

    public function __construct(RegionRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($code, $grade)
    {
        try {
            return $this->repository->where('region_grade', $grade)->where('region_code', $code)->first();
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
