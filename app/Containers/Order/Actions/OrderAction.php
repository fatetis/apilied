<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\Order;
use App\Containers\Order\Models\OrderBase;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class OrderAction extends Action
{
    public function run($data)
    {
        try{
            $result = '';
            DB::transaction(function () use ($data, &$result){
                // $data里面的值sku_id num address_id msg
                // 校验产品数据
                $prod_info = Apiato::call('Product@ValidateProductBySkuIdAndNumAction', [$data]);
                if(is_string($prod_info)) throw new WrongEnoughIfException($prod_info);
                // 获取用户地址数据
                $address_info = Apiato::call('User@FindUserAddressByIdTask', [$data->address_id]);
                // 获取登录用户信息
                $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
                if($address_info['user_id'] !== $user_info['id'])
                    throw new WrongEnoughIfException(GlobalStatusCode::ORDER_ADDRESS_MATE);
                // 创建订单数据处理
                $result = $this->dealCreateOrderData($address_info, $prod_info, $user_info, $data);
            });
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException){
            return $wrongEnoughIfException->getMessage();
        }catch (NotFoundException $notFoundException){
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        }catch (\Throwable $throwable){
            elog('下单产品校验异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }

    public function dealCreateOrderData(...$original_data)
    {
        list($address_info, $prod_info, $user_info, $request_info) = $original_data;
        $sku_id = $request_info->sku_id;
        $total_price = 0;
        $brand_id = '';
        $order_child_data = [];
        foreach ($prod_info as $key => $value){
            $prod_sku_id = $value->id;
            $num = is_string($sku_id) ? $request_info->num : $sku_id->$prod_sku_id;
            // 商品订单数据
            $order_child_data[] = [
                'product_id' => $value->product_id,
                'sku_id' => $value->id,
                'product_price' => $value->price,
//                'shipping_fee' => null,
                'number' => $num,
            ];
            $total_price = $total_price + upDecimal($value->price*$num);
            $brand_id = $value->product->brand_id;
        }

        // 订单基础数据
        $order_base_data = [
            'orderno' => $this->generateOrderNo($user_info['id']),
            'user_id' => $user_info['id'],
            'price' => $total_price,
//            'shipping_price' => null,
            'pay_price' => null,
            'order_status' => OrderBase::ORDER_STATUS_WAIT_PAY,
            'pay_status' => OrderBase::PAY_STATUS_PAY,
            'source' => OrderBase::SOURCE_ORDINARY,
        ];
        $order_base_result = Apiato::call('Order@CreateOrderBaseTask', [$order_base_data]);

        // 订单数据
        $order_data = [
            'base_id' => $order_base_result['id'],
            'brand_id' => $brand_id,
            'message' => $request_info->msg,
            'order_type' => Order::ORDER_TYPE_ORDINARY,
        ];
        $order_result = Apiato::call('Order@CreateOrderTask', [$order_data]);

        // 配送地址数据
        $shipping_address_data = [
            'order_base_id' => $order_base_result['id'],
            'name' => $address_info->name,
            'region_pid' => $address_info->region_pid,
            'region_cid' => $address_info->region_cid,
            'region_aid' => $address_info->region_aid,
            'address' => $address_info->address,
            'mobile' => $address_info->mobile,
            'code' => $address_info->code,
        ];
        Apiato::call('Order@CreateShippingAddressTask', [$shipping_address_data]);

        foreach ($order_child_data as $val) {
            $val['order_id'] = $order_result['id'];
            Apiato::call('Order@CreateOrderChildTask', [$val]);
            // 减少库存
            Apiato::call('Product@DecrementProductSkuStockQuantityBySkuIdTask', [$val['sku_id']]);
        }

        return $order_base_result;
    }

    public function generateOrderNo($user_id)
    {
        $orderno = date("Ymd") . rand(10000, 99999) . cutNumber($user_id, 7) . rand(10000, 99999);
        $result = Apiato::call('Order@FindOrderBaseByOrdernoTask', [$orderno]);
        if (!empty($result)) {
            return $this->generateOrderNo($user_id);
        }
        return $orderno;
    }



}
