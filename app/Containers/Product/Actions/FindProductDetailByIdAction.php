<?php

namespace App\Containers\Product\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Transporters\DataTransporter;

class FindProductDetailByIdAction extends Action
{
    public function run(DataTransporter $data)
    {
        $product = Apiato::call('Product@FindProductDetailByIdTask', [[$data->id]]);

        return $product;
    }
}
