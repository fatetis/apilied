<?php

namespace App\Containers\Order\Actions;

use Apiato\Core\Traits\HashIdTrait;
use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\ProductOrder;
use App\Containers\Order\Models\Order;
use App\Containers\Order\Models\Snapshots;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class CreateOrderAction extends Action
{
    use HashIdTrait;
    public function run($data)
    {
        try{
            $result = '';
            DB::transaction(function () use ($data, &$result){
                /**
                 * $data里面的值sku_id num address_id msg
                 * 校验产品数据
                 */
                $prod_info = Apiato::call('Product@ValidateProductBySkuIdAndNumAction', [$data]);
                if(is_string($prod_info)) throw new WrongEnoughIfException($prod_info);
                /**
                 * 获取用户地址数据
                 */
                $address_info = Apiato::call('User@FindUserAddressByIdTask', [$data->address_id]);
                /**
                 * 获取登录用户信息
                 */
                $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
                if($address_info['user_id'] !== $user_info['id'])
                    throw new WrongEnoughIfException(GlobalStatusCode::ORDER_ADDRESS_MATE);
                /**
                 * 创建订单数据处理
                 */
                $result = $this->dealCreateOrderData($address_info, $prod_info, $user_info, $data);
            });
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException){
            return $wrongEnoughIfException->getMessage();
        }catch (NotFoundException $notFoundException){
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        }

    }

    public function dealCreateOrderData(...$original_data)
    {
        list($address_info, $prod_info, $user_info, $request_info) = $original_data;
        $sku_id           = $request_info->sku_id;
        $total_price      = 0;
        $brand_id         = '';
        $order_child_data = [];
        $order_snapshot   = [];
        foreach ($prod_info as $key => $value){
            $prod_sku_id = $value->id;
            $num = is_string($sku_id) ? $request_info->num : $sku_id->$prod_sku_id;
            /**
             * 商品订单数据
             */
            $order_child_data[] = [
                'product_id'    => $value->product_id,
                'sku_id'        => $value->id,
                'product_price' => $value->price,
//                'shipping_fee' => null,
                'number'        => $num,
            ];
            $order_snapshot['sku_info'][] = $value;
            $total_price = upDecimal($total_price + upDecimal($value->price * $num));
            $brand_id = $value->product->brand_id;
        }
        /**
         * 订单基础数据 todo: 优惠价格与运费未进行处理
         */
        $order_data = [
            'orderno'      => $this->generateOrderNo($user_info['id']),
            'user_id'      => $user_info['id'],
            'origin_price' => $total_price,
            'price'        => $total_price,
//            'shipping_price' => null,
            'pay_price'    => null,
            'order_status' => Order::ORDER_STATUS_TRADING,
            'pay_status'   => Order::PAY_STATUS_PAY,
            'source'       => Order::SOURCE_ORDINARY,
        ];
        $order_snapshot['order'] = $order_data;
        $order_base_result = Apiato::call('Order@CreateOrderTask', [$order_data]);
        /**
         * 配送地址数据
         */
        $shipping_address_data = [
            'name'       => $address_info->name,
            'region_pid' => $address_info->region_pid,
            'region_cid' => $address_info->region_cid,
            'region_aid' => $address_info->region_aid,
            'address'    => $address_info->address,
            'mobile'     => $address_info->mobile,
            'code'       => $address_info->code,
        ];
        $order_snapshot['shipping_address'] = $shipping_address_data;
        $region = Apiato::call('Region@GetCompletePCAByAreaIdAction', [[$shipping_address_data['region_aid']]]);
        $order_snapshot['shipping_address']['pca'] = $region[$shipping_address_data['region_aid']]['pca'];
        $shipping_address_result = Apiato::call('Order@CreateShippingAddressTask', [$shipping_address_data]);

        // todo: 订单数据需扩展兼容多商家结算
        $product_order_data = [
            'order_id'            => $order_base_result['id'],
            'brand_id'            => $brand_id,
            'shipping_address_id' => $shipping_address_result['id'],
            'message'             => $request_info->msg ? $request_info->msg : null,
            'order_type'          => ProductOrder::ORDER_TYPE_ORDINARY,
            'show_status'         => ProductOrder::SHOW_STATUS_WAIT_PAY
        ];
        $order_snapshot['product_order'] = $product_order_data;
        $order_result = Apiato::call('Order@CreateProductOrderTask', [$product_order_data]);
        /**
         * 删除购物车数据
         */
        if ($request_info->cart_ids) {
            foreach ($request_info->cart_ids as $val) {
                $decode = $this->decode($val);
                Apiato::call('Cart@DeleteCartByUserIdAndIdTask', [$decode, $user_info['id']]);
            }
        }

        foreach ($order_child_data as $val) {
            $val['product_order_id']         = $order_result['id'];
            $val['order_id']                 = $order_base_result['id'];
            $order_snapshot['order_child'][] = $val;
            Apiato::call('Order@CreateProductOrderChildTask', [$val]);
            /**
             * 减少库存
             */
            Apiato::call('Product@DecrementProductSkuStockQuantityBySkuIdTask', [$val['sku_id']]);
        }
        $snapshot['id_value'] = $order_base_result['id'];
        $snapshot['value']    = je($order_snapshot);
        $snapshot['type']     = Snapshots::TYPE_ORDER;
        /**
         * 创建订单快照记录
         */
        Apiato::call('Order@CreateSnapshotsTask', [$snapshot]);
        return $order_base_result;
    }

    public function generateOrderNo($user_id)
    {
        $orderno = date("Ymd") . rand(10000, 99999) . cutNumber($user_id, 7) . rand(10000, 99999);
        $result = Apiato::call('Order@FirstOrderByOrdernoOrUserIdTask', [$orderno]);
        if (!empty($result)) {
            return $this->generateOrderNo($user_id);
        }
        return $orderno;
    }



}
