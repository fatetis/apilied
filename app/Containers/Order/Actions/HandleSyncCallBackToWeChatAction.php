<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class HandleSyncCallBackToWeChatAction extends Action
{
    public function run($data)
    {
        try{
            Apiato::call('Order@HandleSyncNotifyToOrderSubAction', [$data]);
            return 'SUCCESS';
        }catch (\Throwable $throwable){
            elog('微信支付异步通知异常', $throwable);
            return 'FAIL';
        }

    }
}
