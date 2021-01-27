<?php

namespace App\Containers\Cart\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class UpdateOrCreateCartAction extends Action
{
    public function run($data)
    {
        try{
            $arr = [
                'sku_id' => $data->sku_id,
            ];
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
        }catch (\Throwable $throwable) {
            elog('创建购物车抛出异常', $throwable, $data);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
