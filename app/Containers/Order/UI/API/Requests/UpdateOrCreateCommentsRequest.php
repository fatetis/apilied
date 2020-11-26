<?php

namespace App\Containers\Order\UI\API\Requests;

use App\Containers\Order\Models\OrderBase;
use App\Ship\Parents\Requests\Request;

/**
 * Class UpdateOrCreateCommentsRequest.
 */
class UpdateOrCreateCommentsRequest extends Request
{

    /**
     * The assigned Transporter for this Request
     *
     * @var string
     */
    // protected $transporter = \App\Ship\Transporters\DataTransporter::class;

    /**
     * Define which Roles and/or Permissions has access to this request.
     *
     * @var  array
     */
    protected $access = [
        'permissions' => '',
        'roles'       => '',
    ];

    /**
     * Id's that needs decoding before applying the validation rules.
     *
     * @var  array
     */
    protected $decode = [
        'id',
        'base_id',
        'pid',
        'product_id',
    ];

    /**
     * Defining the URL parameters (e.g, `/user/{id}`) allows applying
     * validation rules on them and allows accessing them like request data.
     *
     * @var  array
     */
    protected $urlParameters = [

    ];

    /**
     * @return  array
     */
    public function rules()
    {
        return [
            'base_id' => 'required|exists:order_base,id,order_status,'.OrderBase::ORDER_STATUS_WAIT_APPRAISE.',deleted_at,NULL',
            'pid' => 'exists:comments,id,deleted_at,NULL',
            'id' => 'exists:comments,id,deleted_at,NULL',
            'product_id' => 'required|exists:comments,id,deleted_at,NULL',
            'content' => 'required|max:255',
            'content_rank' => 'numeric|min:0.5|max:5',
            'media_id' => 'array|exists:media,id,deleted_at,NULL'
        ];
    }

    public function messages()
    {
        return [
            'base_id.required' => '缺少base_id必要参数，请刷新重试',
            'base_id.exists' => 'base_id数据不存在，请退出重试',
            'product_id.required' => '缺少product_id必要参数，请刷新重试',
            'product_id.exists' => 'product_id数据不存在，请退出重试',
            'pid.exists' => 'pid数据不存在，请退出重试',
            'id.exists' => 'id数据不存在，请退出重试',
            'content.required' => '评论内容不能为空',
            'content.max' => '评论内容超出字符限制，最大255个字符',
            'content_rank.numeric' => '评论分数参数不正确',
            'content_rank.max' => '评论分数最大5分',
            'content_rank.min' => '评论分数最小0.5分',
            'media_id.exists' => '图片数据不存在，请重新上传',
            'media_id.array' => '图片数据参数不正确',
        ];
    }

    /**
     * @return  bool
     */
    public function authorize()
    {
        return $this->check([
            'hasAccess',
        ]);
    }
}
