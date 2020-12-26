<?php

namespace App\Containers\Cart\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class UpdateOrCreateCartRequest.
 */
class UpdateOrCreateCartRequest extends Request
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
//         'sku_id',
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
            'sku_id' => 'required|exists:product_sku,id,deleted_at,NULL',
            'num' => 'numeric',
            'is_selected' => 'boolean',
            'type' => 'in:create',
        ];
    }

    public function messages()
    {
        return [
            'sku_id.required' => '请选择需购买的产品sku',
            'sku_id.exists' => '产品数据不合法',
            'is_selected.boolean' => '数据不合法【is_selected】，请刷新重试',
            'num.required' => '请输入需购买的产品数量',
            'num.numeric' => '产品数量数据类型不正确',
            'type.in' => '数据不合法【type】，请刷新重试',
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
