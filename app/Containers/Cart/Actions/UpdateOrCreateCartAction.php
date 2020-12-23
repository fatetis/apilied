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
            $cart = Apiato::call('Cart@UpdateOrCreateCartTask', [
                $arr,
                array_merge($arr, [
                    'number' => $data->num,
                    'product_id' => $sku_info['product_id'],
                    'brand_id' => $sku_info['product']['brand_id']
                ])
            ]);
            return $cart;
        }catch (\Throwable $throwable) {
            elog('创建购物车抛出异常', $throwable, $data);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
