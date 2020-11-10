<?php

namespace App\Containers\User\Actions;

use App\Containers\Region\Models\Region;
use App\Ship\Exceptions\NotFoundException;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;
use Illuminate\Support\Facades\DB;

class UpdateOrCreateUserAddressAction extends Action
{
    public function run($data)
    {
        try{
            $user_address = [];
            DB::transaction(function () use($data, &$user_address){
                $id = $data->id;
                $arr = [
                    'name' => $data->name,
                    'region_aid' => $data->aid,
                    'address' => $data->address,
                    'mobile' => $data->mobile,
                    'code' => $data->code,
                    'is_default' => $data->default,
                ];
                //  通过区数据获取省市数据
                $region_info = Apiato::call('Region@FindRegionByIdAndGradeTask', [$arr['region_aid'], Region::GRADE_AREA]);
                list($arr['region_pid'], $arr['region_cid'], $arr['region_aid']) = array_values(array_filter(explode(',', $region_info['region_path'])));
                // 获取用户信息
                $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
                $arr['user_id'] = $user_info['id'];
                if($arr['is_default'] == GlobalStatusCode::YES) {
                    Apiato::call('User@UpdateUserAddressByUserIdTask', [[
                        'is_default' => GlobalStatusCode::NO
                    ], $arr['user_id']]);
                }
                $user_address = Apiato::call('User@UpdateOrCreateUserAddressTask', [[
                    'id' => $id
                ], $arr]);
            });
            return $user_address;
        }catch (NotFoundException $notFoundException) {
            return GlobalStatusCode::MODEL_NOTHING_RESULT;
        } catch (\Throwable $throwable) {
            elog('编辑我的收货地址抛出异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
