<?php

namespace App\Containers\Product\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class FindProductByIdRequest.
 */
class FindProductByIdRequest extends Request
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
    ];

    /**
     * Defining the URL parameters (e.g, `/user/{id}`) allows applying
     * validation rules on them and allows accessing them like request data.
     *
     * @var  array
     */
    protected $urlParameters = [
         'id',
    ];

    /**
     * @return  array
     */
    public function rules()
    {
        return [
            'id' => 'required|regex:/^[1-9][0-9]*$/|exists:product,id,deleted_at,NULL'
        ];
    }

    public function messages()
    {
        return [
            'id.required' => '缺少必要参数，请刷新页面重试',
            'id.regex' => '参数不合法，请刷新页面重试',
            'id.exists' => '数据不存在，请退出重试',
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
