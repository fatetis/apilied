<?php

namespace App\Containers\Authentication\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class ProxyLoginForMobileApiClientRequest.
 */
class ProxyLoginForMobileApiClientRequest extends Request
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
    /**
     * @return  array
     */
    public function rules()
    {
        return [
            // 至少2-16个字符，不允许包含特殊字符
            'username' => 'required_without:mobile|min:2|max:16|regex:/^[\x{4e00}-\x{9fa5}A-Za-z0-9]{2,16}$/u',
            'mobile' => 'required_without:username|min:11|max:11|mobile',
            // 至少6-16个字符，至少1个大写字母，1个小写字母和1个数字，其他可以是任意字符
//            'password' => 'required|min:6|max:16|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\s\S]{6,16}$/',
        ];
    }

    public function messages()
    {
        return [
            'username.required_without' => '用户名为必填',
            'username.min' => '用户名至少为2个字符',
            'username.max' => '用户名最多为16个字符',
            'username.regex' => '用户名不合法，不允许包含特殊字符',
            'mobile.required_without' => '手机号为必填',
            'mobile.min' => '手机号至少为11个字符',
            'mobile.max' => '手机号最多为11个字符',
            'password.required' => '密码为必填',
            'password.min' => '密码至少为6个字符',
            'password.max' => '密码最多为16个字符',
            'password.regex' => '密码不合法，至少包含1个大写字母，1个小写字母和1个数字',
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
