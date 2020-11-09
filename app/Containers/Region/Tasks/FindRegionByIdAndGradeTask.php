<?php

namespace App\Containers\Region\Tasks;

use App\Containers\Region\Data\Repositories\RegionRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Tasks\Task;
use Exception;

class FindRegionByIdAndGradeTask extends Task
{

    protected $repository;

    public function __construct(RegionRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $grade)
    {
        try {
            return $this->repository->where('region_grade', $grade)->find($id);
        }
        catch (Exception $exception) {
            throw new NotFoundException();
        }
    }
}
