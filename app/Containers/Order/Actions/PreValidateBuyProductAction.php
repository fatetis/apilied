<?php

namespace App\Containers\Order\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use Illuminate\Support\Facades\Log;

class PreValidateBuyProductAction extends Action
{
    public function run($data)
    {
        try {
            $product_sku = Apiato::call('Product@FindProductSkuByIdTask', [
                $data->sku_id
            ]);
            $product = Apiato::call('Product@FindProductByIdTask', [
                $product_sku->product_id
            ]);
            return $product;
        }catch (NotFoundException $notFoundException) {
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        } catch (\Throwable $throwable) {
            elog('下单产品校验异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
