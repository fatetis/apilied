<?php

namespace App\Containers\Index\Actions;

use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class GetIndexAdvAction extends Action
{
    public function run($region_open_id)
    {
        $ename = ['index', 'index_category', 'index_plug', 'index_daily'];
        $adv_position = Apiato::call('Index@GetAdvByEnameTask', [['ename' => $ename, 'region_open_id' => $region_open_id]]);
        $data = [];
        foreach ($adv_position as $key => $value) {
            if(isset($data['index_plug']) && count($data['index_plug']) >= 3) continue;
            if(isset($data['index_daily']) && count($data['index_daily']) >= 8) continue;
            $data[$value['ename']][$key]['link'] = $value['media']['link'] ?? '';
            $data[$value['ename']][$key]['url'] = $value['url'];
            $data[$value['ename']][$key]['adv_id'] = $value['adv_id'];
            $data[$value['ename']][$key]['adv_open_id'] = $value['id'];
            $data[$value['ename']][$key]['adv_position_id'] = $value['position_id'];
        }
        return $data;
    }
}
