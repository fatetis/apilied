<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class HandleSyncCallBackToBalanceAction extends Action
{
    public function run($data)
    {
        $params = [
            'reqno' => date('YmdHis').mb_substr($data->orderno, 0, 6).mt_rand(10000, 99999),
            'resno' => date('YmdHis').mb_substr($data->orderno, 6, 6).mt_rand(10000, 99999),
            'orderno' => $data->orderno,
            'outside_orderno' => date('YmdHis').mb_substr($data->orderno, 12, 6).mt_rand(10000, 99999),
            'pay_price' => $data->price,
            'pay_id' => 0,
            'pay_name' => $data->type,
            'is_pay'=> GlobalStatusCode::YES,
        ];
        try{
            $order_info = Apiato::call('Order@FirstOrderByOrdernoOrUserIdTask', [$data->orderno]);
            if(empty($order_info)) throw new WrongEnoughIfException(GlobalStatusCode::ORDER_DATA_NOTHING);
            $result = Apiato::call('Order@HandleSyncNotifyToOrderSubAction', [$params]);
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException) {
            return $wrongEnoughIfException->getMessage();
        }catch (\Throwable $throwable){
            elog('余额支付抛出异常', $throwable, $params);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }
    }
}
