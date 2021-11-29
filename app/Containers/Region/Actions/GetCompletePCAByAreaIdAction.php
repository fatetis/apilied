<?php

namespace App\Containers\Region\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetCompletePCAByAreaIdAction extends Action
{
    public function run($ids)
    {
        try{
            $var = Apiato::call('Region@GetRegionByIdsTask', [$ids]);
            $region_name = Apiato::call('Region@PluckRegionNameAndIdTask');
            $result = [];
            collect($var)->map(function ($value) use($region_name, &$result){
                $path = array_values(array_filter(explode(',', $value['region_path'])));
                list($province, $city, $county) = $path;
                $result[$value['region_id']]['id'] = $value['region_id'];
                $result[$value['region_id']]['province'] = $region_name[$province];
                $result[$value['region_id']]['city'] = $region_name[$city];
                $result[$value['region_id']]['county'] = $region_name[$county];
                $result[$value['region_id']]['area_code'] = $value['region_code'];
                $result[$value['region_id']]['pca'] = $region_name[$province].'/'.$region_name[$city].'/'.$region_name[$county];
            });
            return $result;
        }catch (\Throwable $throwable){
            elog('获取我的收货地址抛出异常', $throwable, $ids);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
