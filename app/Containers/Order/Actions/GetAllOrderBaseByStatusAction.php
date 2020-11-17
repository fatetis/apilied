<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetAllOrderBaseByStatusAction extends Action
{
    public function run($data)
    {
        try{
            $status = $data->status;
            if($status !== null && !in_array($status, array_keys(OrderBase::ORDER_STATUS)))
                throw new WrongEnoughIfException();
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $result = Apiato::call('Order@GetAllOrderBaseByStatusTask', [$status, $user_info['id']]);
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException){
            return GlobalStatusCode::ORDER_STATUS_FAIL;
        }catch (\Throwable $throwable){
            elog('查询订单信息异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
