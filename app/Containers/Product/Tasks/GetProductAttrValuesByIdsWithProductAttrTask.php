<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductAttrValuesRepository;
use App\Ship\Parents\Tasks\Task;

class GetProductAttrValuesByIdsWithProductAttrTask extends Task
{

    protected $repository;

    public function __construct(ProductAttrValuesRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($ids)
    {
        return $this->repository->with('attr')->findWhereIn('id', $ids)->keyBy('id');
    }
}
