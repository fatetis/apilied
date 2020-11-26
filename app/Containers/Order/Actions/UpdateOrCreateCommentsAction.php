<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;
use Illuminate\Support\Facades\DB;

class UpdateOrCreateCommentsAction extends Action
{
    public function run($data)
    {
        try{
            $result = '';
            DB::transaction(function() use($data, &$result) {
                $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
                $media_id = $data->media_id;
                $id = $data->id;
                $data = [
                    'user_id' => $user_info['id'],
                    'name' => $user_info['name'],
                    'media_id' => $user_info['media_id'],
                    'base_id' => $data->base_id,
                    'product_id' => $data->product_id,
                    'pid' => $data->pid ?? 0,
                    'content' => $data->content,
                    'content_rank' => $data->content_rank,
                ];
                // 检测是否购买过该产品
                $validateComments = Apiato::call('Order@FirstOrderChildByBaseIdAndProductIdTask', [$data['base_id'], $data['product_id']]);
                // 检测是否该用户购买该产品
                $validateUserComments = Apiato::call('Order@FindOrderBaseByUserIdAndIdTask', [$data['base_id'], $data['user_id']]);
                if(empty($validateComments) || empty($validateUserComments))
                    throw new WrongEnoughIfException(GlobalStatusCode::COMMENTS_DATA_NOTHING);
                // 检测当前订单是否处在待评价状态
                if($validateUserComments['order_status'] !== OrderBase::ORDER_STATUS_WAIT_APPRAISE)
                    throw new WrongEnoughIfException(GlobalStatusCode::COMMENTS_ORDER_NOT_TRUE);
                // 更新或者创建评论
                $result = Apiato::call('Order@UpdateOrCreateCommentsTask', [[
                    'id' => $id ?? null
                ], $data]);
                // 图片处理
                if(!empty($media_id)) {
                    $sort = count($media_id);
                    $arr = [];
                    foreach ($media_id as $index => $value) {
                        $sort--;
                        // 更新或者创建评论图片
                        $deal_media = Apiato::call('Order@UpdateOrCreateCommentMediasTask', [
                            [
                                'comment_id' => $result['id'],
                                'media_id' => $value,
                            ],
                            [
                                'comment_id' => $result['id'],
                                'media_id' => $value,
                                'sort' => $sort
                            ]
                        ]);
                        $arr[] = $deal_media['id'];
                    }
                    // 删除评论图片
                    Apiato::call('Order@DeleteCommentMediasByCommentIdAndNotInIdsTask', [$result['id'], $arr]);
                }
            });
            return $result;
        }catch (WrongEnoughIfException $wrongEnoughIfException){
            return $wrongEnoughIfException->getMessage();
        }

    }
}
