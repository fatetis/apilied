<?php

namespace App\Containers\Product\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Transporters\DataTransporter;

class ValidateProductBySkuIdAndNumAction extends Action
{
    public function run($data)
    {
        try {
            /**
             * 购物车
             * 例子：
             * 购物车传参方式
             * [
             * 'sku_id' => 'num'
             * ]
             *
             * 立即购买传参方式
             * [
             * 'sku_id' => 9,
             * 'num' => 1
             * ]
             */
            $result = [];
            if(is_array($data->sku_id)) {
                $seller_id = '';
                foreach ($data->sku_id as $key => $value) {
                    $prod_data = $this->dealValidateProduct(new DataTransporter(['sku_id' => $key, 'num' => $value]));
                    // 只允许一个商家进行结算
                    if(!empty($seller_id)) {
                        if($seller_id !== $prod_data->product->brand_id)
                            throw new WrongEnoughIfException(GlobalStatusCode::PRODUCT_SELLER_UNIQUE);
                    }else{
                        $seller_id = $prod_data->product->brand_id;
                    }
                    $result[] = $prod_data;
                }
            }else{
                if(empty($data->num)) throw new WrongEnoughIfException(GlobalStatusCode::PRODUCT_BUY_NUM_NECESSARY);
                $result[] = $this->dealValidateProduct($data);
            }
            if(empty($result)) throw new NotFoundException();
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException) {
            return $wrongEnoughIfException->getMessage();
        }catch (NotFoundException $notFoundException) {
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        } catch (\Throwable $throwable) {
            elog('购买产品前校验异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }


    public function dealValidateProduct($data)
    {
        $sku = Apiato::call('Product@FindProductSkuWithProductAndStockByIdTask', [
            $data->sku_id
        ]);
        if(empty($sku)) throw new NotFoundException();
        // 库存不足
        if($data->num > $sku->stock->quantity)
            throw new WrongEnoughIfException(GlobalStatusCode::PRODUCT_STOCK_INSUFFICIENT);

        return $sku;
    }

}
