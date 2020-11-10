<?php

namespace App\Containers\User\Actions;

use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;

class FindUserAddressByUserIdAndIdOrIsDefaultAction extends Action
{
    public function run($data)
    {
        try{
            $id = $data->id;
            $is_default = $data->is_default;
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            // 获取用户收货地址
            $useraddress = Apiato::call('User@FindUserAddressByUserIdAndIdOrIsDefaultTask', [$id, $user_info['id'], $is_default]);
            if(empty($useraddress)) throw new NotFoundException();
            // 获取城市区划的城市名称及区域编码
            $region = Apiato::call('Region@GetCompletePCAByAreaIdAction', [[$useraddress['region_aid']]]);
            $useraddress['province'] = $region[$useraddress['region_aid']]['province'];
            $useraddress['city'] = $region[$useraddress['region_aid']]['city'];
            $useraddress['county'] = $region[$useraddress['region_aid']]['county'];
            $useraddress['area_code'] = $region[$useraddress['region_aid']]['area_code'];
            return $useraddress;
        }catch (NotFoundException $notFoundException) {
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        }catch (\Throwable $throwable) {
            elog('获取我的收货地址抛出异常', $throwable, $data);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
