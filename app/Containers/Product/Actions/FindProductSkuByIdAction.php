<?php

namespace App\Containers\Product\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class FindProductSkuByIdAction extends Action
{
    public function run($data)
    {
        $product = Apiato::call('Product@FindProductSkuWithProductAndStockByIdTask', [
            $data->id
        ]);

        return $product;
    }
}
