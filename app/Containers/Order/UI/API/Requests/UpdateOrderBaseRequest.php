<?php

namespace App\Containers\Order\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class UpdateOrderBaseRequest.
 */
class UpdateOrderBaseRequest extends Request
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
        'status'
    ];

    /**
     * Defining the URL parameters (e.g, `/user/{id}`) allows applying
     * validation rules on them and allows accessing them like request data.
     *
     * @var  array
     */
    protected $urlParameters = [
        'orderno',
    ];

    /**
     * @return  array
     */
    public function rules()
    {
        return [
            'orderno' => 'required|exists:order_base,orderno,deleted_at,NULL',
        ];
    }

    public function messages()
    {
        return [
            'orderno.required' => '缺少必要参数，请刷新页面重试',
            'orderno.exists' => '数据不合法，请刷新页面重试',
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
