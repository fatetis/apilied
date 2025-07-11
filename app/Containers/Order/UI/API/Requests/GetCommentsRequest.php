<?php

namespace App\Containers\Order\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class GetCommentsRequest.
 */
class GetCommentsRequest extends Request
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
        'prod_id'
    ];

    /**
     * Defining the URL parameters (e.g, `/user/{id}`) allows applying
     * validation rules on them and allows accessing them like request data.
     *
     * @var  array
     */
    protected $urlParameters = [
        'prod_id'
        // 'id',
    ];

    /**
     * @return  array
     */
    public function rules()
    {
        return [
            'prod_id' => 'required|exists:product,id,deleted_at,NULL',
        ];
    }

    public function messages()
    {
        return [
            'prod_id.required' => '缺少必要参数，请刷新页面重试',
            'prod_id.exists' => '数据不存在，请退出重试',
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
