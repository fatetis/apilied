<?php

namespace App\Containers\Login\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class CreateMobileVerifyCodeRequest.
 */
class CreateMobileVerifyCodeRequest extends Request
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
        // 'id',
    ];

    /**
     * Defining the URL parameters (e.g, `/user/{id}`) allows applying
     * validation rules on them and allows accessing them like request data.
     *
     * @var  array
     */
    protected $urlParameters = [
        // 'id',
    ];

    /**
     * @return  array
     */
    public function rules()
    {
        return [
             'mobile' => 'required|mobile',
             'using_type' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'mobile.required' => '手机号为必填',
            'mobile.mobile' => '手机号不合法',
            'using_type.required' => '缺少必要参数,请刷新页面重试',
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
