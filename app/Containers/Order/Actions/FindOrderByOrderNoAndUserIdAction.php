<?php

namespace App\Containers\Order\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class FindOrderByOrderNoAndUserIdAction extends Action
{
    public function run($data)
    {
        try{
            $orderno = $data->id;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $result = Apiato::call('Order@FirstOrderByOrdernoOrUserIdTask', [$orderno, $user_info['id']]);
            return $result;
        }catch (NotFoundException $notFoundException){
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        }

    }
}
