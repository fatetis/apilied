<?php

namespace App\Containers\Cart\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class UpdateOrCreateCartAction extends Action
{
    public function run($data)
    {
        $arr = [
            'sku_id' => $data->sku_id,
        ];
        if($data->num !== null) {
            $check = Apiato::call('Product@ValidateProductBySkuIdAndNumAction', [$data]);
            if(is_string($check)) throw new WrongEnoughIfException($check);
        }
        $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
        $arr['user_id'] = $user_info['id'];
        $sku_info = Apiato::call('Product@FindProductSkuWithProductAndStockByIdTask', [
            $data->sku_id
        ]);
        if($data->type && $data->type == 'create') {
            $cart_info = Apiato::call('Cart@FirstCartBySkuIdAndUserIdTask', [$arr['sku_id'], $arr['user_id']]);
            if($cart_info) $data->num += $cart_info['number'];
        }
        $cart = Apiato::call('Cart@UpdateOrCreateCartTask', [
            $arr,
            array_merge(
                $arr,
                [
                    'product_id' => $sku_info['product_id'],
                    'brand_id' => $sku_info['product']['brand_id'],
                ],
                $data->is_selected !== null ? ['is_selected' => $data->is_selected] : [],
                $data->num !== null ? ['number' => $data->num] : []
            )
        ]);
        return $cart;

    }
}
