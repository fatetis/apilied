<?php

namespace App\Containers\Index\Tasks;

use App\Containers\Index\Data\Repositories\AdvRepository;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class GetAdvByEnameTask extends Task
{

    protected $repository;

    public function __construct(AdvRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run(array $data)
    {
        return $this->repository
            ->leftJoin('adv_position', 'adv_position.id', 'adv.position_id')
            ->leftJoin('adv_open', 'adv_open.adv_id', 'adv.id')
            ->whereIn('adv_position.ename', $data['ename'])
            ->where('adv_open.start_time', '<=', dt())
            ->where('adv_open.end_time', '>', dt())
            ->where('adv.is_show', GlobalStatusCode::YES)
            ->where('adv_position.is_show', GlobalStatusCode::YES)
            ->where('adv_open.region_open_id', $data['region_open_id'])
            ->with('media')
            ->select('adv.url', 'adv.media_id', 'adv.position_id', 'adv_open.adv_id', 'adv_open.id', 'adv_position.ename')
            ->orderByDesc('sort')
            ->get()->toArray();
    }
}
