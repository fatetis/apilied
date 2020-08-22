<?php

namespace App\Containers\Product\Tasks;

use Apiato\Core\Traits\HashIdTrait;
use App\Containers\Product\Data\Repositories\ProductCategoryRepository;
use App\Containers\Product\Models\ProductCategory;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Tasks\Task;

class GetProductCategoryByPidTask extends Task
{

    protected $repository;

    public function __construct(ProductCategoryRepository $repository)
    {
        $this->repository = $repository;
    }

    public function run($pid)
    {
        try{
            $query_sql = $pid !== null
                ? $this->repository->where(['pid' => $pid])
                : $this->repository->where(['is_rec' => GlobalStatusCode::YES]);

            return $query_sql
                ->with('media')
                ->with('children')
                ->select('name', 'product_category.id', 'is_rec', 'pid', 'media_id')
                ->orderBy('sort')
                ->orderByDesc('product_category.updated_at')
                ->get();
        } catch (\Exception $e) {
            throw new NotFoundException();
        }
    }
}
