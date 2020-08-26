<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class PreValidateBuyProductAction extends Action
{
    public function run($data)
    {
         $product_sku = Apiato::call('Product@FindProductSkuByIdTask', [
             $data->sku_id
         ]);
        $product = Apiato::call('Product@FindProductByIdTask', [
            $product_sku->product_id
        ]);
        dd($product);

    }
}
