<?php

namespace App\Containers\Order\Actions;

use App\Containers\Order\Exceptions\WrongEnoughIfException;
use App\Containers\Order\Models\Order;
use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
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
                // todo: 暂不开放编辑评论功能
                // $id = $data->id;
                $tid = $data->tid;
                $data = [
                    'base_id' => $data->base_id,
                    'product_id' => $data->product_id,
                    'pid' => $data->pid ?? 0,
                    // 当前用户信息
                    'from_uid' => $user_info['id'],
                    'from_name' => $user_info['name'],
                    'from_media_id' => $user_info['media_id'],
                    // 评论内容
                    'content' => htmlspecialchars($data->content, ENT_QUOTES),
                    'content_rank' => $data->content_rank,
                ];

                // 获取目标用户信息
                if(!empty($tid)) {
                    $to_info = Apiato::call('Order@FindCommentsByIdTask', [$tid]);
                    $data = array_merge($data, [
                        // 目标用户信息
                        'to_uid' => $to_info->from_uid,
                        'to_name' => $to_info->from_name,
                        'to_media_id' => $to_info->from_media_id,
                    ]);
                }
                // 检测是否购买过该产品
                $validateComments = Apiato::call('Order@FirstOrderChildByBaseIdAndProductIdTask', [$data['base_id'], $data['product_id']]);
                // 检测是否该用户购买该产品
                $validateUserComments = Apiato::call('Order@FindOrderBaseByUserIdAndIdTask', [$data['base_id'], $data['from_uid']]);
                if(empty($validateComments) || empty($validateUserComments))
                    throw new WrongEnoughIfException(GlobalStatusCode::COMMENTS_DATA_NOTHING);
                // 检测当前订单是否处在待评价状态
                if($validateUserComments['order_status'] !== Order::ORDER_STATUS_WAIT_APPRAISE)
                    throw new WrongEnoughIfException(GlobalStatusCode::COMMENTS_ORDER_NOT_TRUE);
                // 更新或者创建评论
                $result = Apiato::call('Order@UpdateOrCreateCommentsTask', [[
                    'id' => $id ?? null
                ], $data]);
                // 订单状态改变
                Apiato::call('Order@UpdateOrderBaseTask', [[
                    'id' => $data['base_id']
                ], [
                    'order_status' => Order::ORDER_STATUS_SUCCESS
                ]]);
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
