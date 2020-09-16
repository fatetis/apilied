<?php

namespace App\Containers\Product\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class ValidateProductBySkuIdAndNumRequest.
 */
class ValidateProductBySkuIdAndNumRequest extends Request
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
             'sku_id' => 'required|exists:product_sku,id',
             'num' => 'required|numeric',
        ];
    }

    public function messages()
    {
        return [
            'sku_id.required' => '请选择需要购买的商品',
            'sku_id.exists' => '该商品已下架，请刷新页面重试',
            'num.required' => '请选择商品的购买数量',
            'num.numeric' => '商品的购买数量不足',
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
