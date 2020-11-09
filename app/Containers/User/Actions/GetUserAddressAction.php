<?php

namespace App\Containers\User\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Transporters\DataTransporter;

class GetUserAddressAction extends Action
{
    public function run($data)
    {
        try{
            // 获取用户信息
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $useraddresses = Apiato::call('User@GetUserAddressTask', [$user_info['id']]);
            $region_aid = $useraddresses->pluck('region_aid')->toArray();

            $pca = Apiato::call('Region@GetCompletePCAByAreaIdAction', [$region_aid]);
            collect($useraddresses)->map(function (&$value) use($pca){
                $value['pca'] = $pca[$value['region_aid']]['pca'];
            });
            return $useraddresses;
        }catch (\Throwable $throwable) {
            elog('获取我的收货地址抛出异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
