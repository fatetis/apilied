<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetAllOrderBaseByStatusAction extends Action
{
    public function run($data)
    {
        try{
            $status = $data->status;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $result = Apiato::call('Order@GetAllOrderBaseByStatusTask', [$status, $user_info['id']]);
            return $result;
        }catch (\Throwable $throwable){
            elog('查询订单信息异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
