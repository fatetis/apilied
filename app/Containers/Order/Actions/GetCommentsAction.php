<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Models\Comments;
use App\Ship\Parents\Actions\Action;
use Apiato\Core\Foundation\Facades\Apiato;

class GetCommentsAction extends Action
{
    public function run($data)
    {
        $pid = Comments::PID_EST;
        $product_id = $data->prod_id;
        // 获取评论数据
        $comment = Apiato::call('Order@GetCommentsByPidAndProductIdTask', [$pid, $product_id]);
        $comment_ids = $comment->pluck('id')->toArray();
        // 获取商家评论数据
        $brand_comment = Apiato::call('Order@GetCommentsByPidsAndIsBrandTask', [$comment_ids]);
        collect($comment->items())->map(function ($value) use($brand_comment) {
            collect($brand_comment)->each(function ($val) use(&$value){
                if($value['id'] == $val['pid']) {
                    $value['children'] = $val;
                }
            });
        });

        return $comment;
    }
}
