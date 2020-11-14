<?php

namespace App\Containers\Order\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class FindOrderBaseByOrderNoAction extends Action
{
    public function run($data)
    {
        try{
            $orderno = $data->id;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $result = Apiato::call('Order@FindOrderBaseByOrdernoOrUserIdTask', [$orderno, $user_info['id']]);
            return $result;
        }catch (NotFoundException $notFoundException){
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        }catch (\Throwable $throwable){
            elog('查询订单信息校验异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
