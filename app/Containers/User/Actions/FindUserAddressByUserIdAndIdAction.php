<?php

namespace App\Containers\User\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class FindUserAddressByUserIdAndIdAction extends Action
{
    public function run($data)
    {
        try{
            $id = $data->id;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');

            $useraddress = Apiato::call('User@FindUserAddressByUserIdAndIdTask', [$id, $user_info['id']]);

            $region = Apiato::call('Region@GetCompletePCAByAreaIdAction', [[$useraddress['region_aid']]]);
            $useraddress['province'] = $region[$useraddress['region_aid']]['province'];
            $useraddress['city'] = $region[$useraddress['region_aid']]['city'];
            $useraddress['county'] = $region[$useraddress['region_aid']]['county'];
            $useraddress['area_code'] = $region[$useraddress['region_aid']]['area_code'];
            return $useraddress;
        }catch (NotFoundException $notFoundException) {
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        } catch (\Throwable $throwable) {
            elog('获取我的收货地址抛出异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
