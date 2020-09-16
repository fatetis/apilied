<?php

namespace App\Containers\Product\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class ValidateProductBySkuIdAndNumAction extends Action
{
    public function run($data)
    {
        try {
            $sku = Apiato::call('Product@FindProductSkuByIdTask', [
                $data->sku_id
            ]);
            $product = Apiato::call('Product@FindProductByIdTask', [
                $sku->product_id
            ]);
            $sku_stock = Apiato::call('Product@FindProductSkuStockBySkuIdTask', [
                $sku->id
            ]);
            if(empty($sku) || empty($product) || empty($sku_stock)){
                throw new NotFoundException();
            }

            // 库存不足
            if($data->num > $sku_stock->quantity) return GlobalStatusCode::PRODUCT_STOCK_INSUFFICIENT;

            return true;
        }catch (NotFoundException $notFoundException) {
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        } catch (\Throwable $throwable) {
            dd($throwable->getMessage());
            elog('下单产品校验异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
