<?php

namespace App\Containers\Login\Tasks;

use App\Containers\Login\Data\Repositories\VerifyCodeRepository;
use App\Ship\Parents\Tasks\Task;

class IncrementVerifyCodeByRepeatNumTask extends Task
{
    protected $repoistory;

    public function __construct(VerifyCodeRepository $repository)
    {
        // ..
        $this->repoistory = $repository;
    }

    public function run($num)
    {
        return $this->repoistory->increment('repeat_num', $num);
    }
}
