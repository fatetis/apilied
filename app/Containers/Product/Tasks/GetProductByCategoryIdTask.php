<?php

namespace App\Containers\Product\Tasks;

use App\Containers\Product\Data\Repositories\ProductRepository;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class GetProductByCategoryIdTask extends Task
{

    protected $repository;

    public function __construct(ProductRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($category_id)
    {
        return $this->repository->where([
            'category_id' => $category_id,
            'is_audit' => GlobalStatusCode::YES,
            'is_on_sale' => GlobalStatusCode::YES,
            ])->orderByDesc('sort')->orderByDesc('updated_at')->paginate();
    }
}
