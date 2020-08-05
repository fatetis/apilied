<?php

namespace App\Containers\Product\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;
use App\Ship\Transporters\DataTransporter;

class GetProductCategoryByPidAction extends Action
{
    public function run(DataTransporter $data)
    {
        $cate_data = Apiato::call('Product@GetProductCategoryByPidTask', [$data->pid]);
        return $cate_data;
    }

    /**
     * 递归循环产品分类 父级下带着子级数据
     * @param $cate_data
     * @param int $pid
     * @return array
     * Author: fatetis
     * Date:2020/8/5 000517:06
     */
    public function eachProdCategoryByPid($cate_data, $pid = 0)
    {
        $data = [];
        if(empty($cate_data)) {
            return $cate_data;
        }
        foreach ($cate_data as $key => $value) {
            if($value['pid'] == $pid) {
                $child = $this->eachProdCategoryByPid($cate_data, $value['id']);
                $data[$value['id']] = $value;
                if($child) {
                    $data[$value['id']]['child'] = $child;
                }
            }
        }
        return $data;
    }

}
