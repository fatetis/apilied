<?php

namespace App\Containers\Region\Actions;

use App\Containers\Region\Models\Region;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;

class GetRegionPCAction extends Action
{
    public function run()
    {
        try{
            $result['province_list'] = Apiato::call('Region@PluckRegionByGradeToCodeAndNameTask', [Region::GRADE_PROVINCE]);
            $result['city_list'] = Apiato::call('Region@PluckRegionByGradeToCodeAndNameTask', [Region::GRADE_CITY]);
            $result['county_list'] = Apiato::call('Region@PluckRegionByGradeToCodeAndNameTask', [Region::GRADE_AREA]);
            return $result;
        } catch (\Throwable $throwable) {
            elog('获取省市区数据抛出异常', $throwable);
            return GlobalStatusCode::RESULT_SYSTEM_FAIL_CODE;
        }

    }
}
