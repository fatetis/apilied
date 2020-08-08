<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductRepository;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class FindProductDetailByIdTask extends Task
{

    protected $repository;

    public function __construct(ProductRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($id, $with)
    {
        try{
            $result = $this->repository
                ->where('is_on_sale', GlobalStatusCode::YES)
                ->where('is_audit', GlobalStatusCode::YES)
                ->where('id', $id)
                ->with($with)
                ->orderByDesc('sort')
                ->orderByDesc('updated_at')
                ->first()->toArray();
            return $result;
        } catch (\Exception $e) {
            throw new NotFoundException();
        }
    }
}
