<?php

namespace App\Containers\Login\Tasks;

use App\Containers\Login\Data\Repositories\VerifyCodeRepository;
use App\Ship\Parents\Tasks\Task;
use Carbon\Carbon;

class CountTodayVerifyCodeByMobileAndTypeAndUsingTypeTask extends Task
{

    protected $repository;

    public function __construct(VerifyCodeRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($data)
    {
        return $this->repository->where([
            'account' => $data['account'],
            'type' => $data['type'],
            'using_type' => $data['using_type'],
        ])
            ->whereBetween('created_at', [Carbon::today()->toDateTimeString(), Carbon::tomorrow()->toDateTimeString()])
            ->count();

    }

}
