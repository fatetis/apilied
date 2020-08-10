<?php

namespace App\Containers\Login\Tasks;

use App\Containers\Login\Data\Repositories\VerifyCodeRepository;
use App\Ship\Parents\Tasks\Task;

class FindVerifyCodeByMobileTask extends Task
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
        ])->orderByDesc('created_at')->first();
    }

}
