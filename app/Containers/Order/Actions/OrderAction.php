<?php

namespace App\Containers\Order\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use Illuminate\Support\Facades\DB;

class OrderAction extends Action
{
    public function run($data)
    {
        try{
            DB::transaction(function () use ($data){
                // sku_id num address_id
                $prod_info = Apiato::call('Product@ValidateProductBySkuIdAndNumAction', [$data]);
                $address_info = Apiato::call('User@FindUserAddressByIdTask', [$data->address_id]);
                $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
                dd($address_info, $prod_info, $user_info);
            });
        }catch (NotFoundException $notFoundException){
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        }catch (\Throwable $throwable){
            dd($throwable->getMessage());
            elog('下单产品校验异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }

}
