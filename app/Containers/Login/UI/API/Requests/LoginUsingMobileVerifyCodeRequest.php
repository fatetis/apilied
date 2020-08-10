<?php

namespace App\Containers\Login\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class LoginUsingMobileVerifyCodeRequest.
 */
class LoginUsingMobileVerifyCodeRequest extends Request
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
             'code' => 'required|min:6|max:6|regex:/^\d{6,6}$/',
        ];
    }

    public function messages()
    {
        return [
            'mobile.required' => '手机号码为必填',
            'mobile.mobile' => '手机号码不合法',
            'mobile.exists' => '手机号码不存在',
            'code.required' => '验证码为必填',
            'code.min' => '验证码不合法1',
            'code.max' => '验证码不合法2',
            'code.regex' => '验证码不合法3',
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
