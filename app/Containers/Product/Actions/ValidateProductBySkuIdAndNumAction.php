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
            if(is_object($data->sku_id)) {
                $seller_id = '';
                foreach ($data->sku_id as $key => $value) {
                    $prod_data = $this->dealValidateProduct(new DataTransporter(['sku_id' => $key, 'num' => $value]));

                    // 只允许一个商家进行结算
                    empty($seller_id) && $seller_id = $prod_data->product->brand_id;
                    if($seller_id !== $prod_data->product->brand_id)
                        throw new WrongEnoughIfException(GlobalStatusCode::PRODUCT_SELLER_UNIQUE);
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
        }

    }


    /**
     * 校验产品是否符合购买条件
     * @param $data
     * @return mixed
     * Author: fatetis
     * Date:2020/11/10 00109:51
     */
    public function dealValidateProduct($data)
    {
        $sku = Apiato::call('Product@FindProductSkuWithProductAndStockByIdTask', [
            $data->sku_id
        ]);
        if(empty($sku)) throw new NotFoundException();
        $attr_key = explode('-', $sku->attr_key);
        $sku->attr_values = Apiato::call('Product@GetProductAttrValuesByIdsWithProductAttrTask', [
            $attr_key
        ]);
        // 库存不足
        if($data->num > $sku->stock->quantity)
            throw new WrongEnoughIfException(GlobalStatusCode::PRODUCT_STOCK_INSUFFICIENT);

        return $sku;
    }

}
