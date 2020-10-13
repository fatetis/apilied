<?php

namespace App\Containers\Order\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class OrderRequest.
 */
class OrderRequest extends Request
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
             'sku_id' => 'required',
             'num' => 'numeric',
             'address_id' => 'required|numeric|exists:user_address,id',
//             'msg' => '',
        ];
    }

    public function messages()
    {
        return [
            'sku_id.required' => '请选择需购买的产品sku',
            'sku_id.exists' => '产品数据不合法',
//            'num.required' => '请输入需购买的产品数量',
            'num.numeric' => '产品数量数据类型不正确',
            'address_id.required' => '请填写收货人信息',
            'address_id.numeric' => '收货人信息数据类型不正确',
            'address_id.exists' => '收货人信息不存在',
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
