<?php

namespace App\Containers\Product\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class GetProductByCategoryIdAction extends Action
{
    public function run($data)
    {
        $category_id = $data->cid;
        $products = Apiato::call('Product@GetProductByCategoryIdTask', [$category_id]);

        return $products;
    }
}
