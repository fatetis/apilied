<?php

namespace App\Containers\Pay\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class balancePayRequest.
 */
class BalancePayRequest extends Request
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
            'orderno' => 'required|exists:order,orderno,deleted_at,NULL',
            'price' => 'required',
            'type' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'orderno.required' => '订单id【orderno】是必要参数',
            'price.required' => '价格【price】是必要参数',
            'type.required' => '支付方式【type】是必要参数',
            'orderno.exists' => '订单数据不存在【orderno】，请退出重试',
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
