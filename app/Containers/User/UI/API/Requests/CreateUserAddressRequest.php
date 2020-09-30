<?php

namespace App\Containers\User\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class CreateUserAddressRequest.
 */
class CreateUserAddressRequest extends Request
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
             'name' => 'required|min:2|max:15|regex:/^[\x{4e00}-\x{9fa5}A-Za-z0-9]{2,16}$/u',
             'mobile' => 'required|mobile',
             'aid' => 'required|exists:regions,region_id',
             'address' => 'required',
             'default' => 'boolean',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => '收货人姓名不能为空',
            'name.min' => '收货人姓名至少为2个字符',
            'name.max' => '收货人姓名最多为15个字符',
            'name.regex' => '收货人姓名，不允许包含特殊字符',
            'mobile.required' => '收货人手机号不能为空',
            'mobile.mobile' => '收货人手机号不合法',
            'aid.required' => '收货人省市区不能为空',
            'aid.exists' => '收货人省市区数据不合法',
            'address.required' => '收货人地址不能为空',
            'default.boolean' => '默认地址数据不合法',
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
