<?php

namespace App\Containers\Order\Actions;

use App\Ship\Parents\Actions\Action;
use App\Ship\Parents\Requests\Request;
use Apiato\Core\Foundation\Facades\Apiato;
use Illuminate\Support\Facades\DB;

class CreateCommentsAction extends Action
{
    public function run($data)
    {
        $result = '';
        DB::transaction(function() use($data, &$result) {
            $user_info = Apiato::call('Authentication@GetAuthenticatedUserTask');
            $media_id = $data->media_id;
            $data = [
                'user_id' => $user_info['id'],
                'base_id' => $data->base_id,
                'pid' => $data->pid ?? 0,
                'content' => $data->content,
                'content_rank' => $data->content_rank,
            ];
            $result = Apiato::call('Order@CreateCommentsTask', [$data]);
            if(!empty($media_id)) {
                $create_data = [
                    'comment_id' => $result['id']
                ];
                $sort = count($media_id);
                foreach ($media_id as $index => $value) {
                    $sort--;
                    Apiato::call('Order@CreateCommentMediasTask', [array_merge($create_data, [
                        'media_id' => $value,
                        'sort' => $sort
                    ])]);
                }
            }
        });
        return $result;
    }
}
