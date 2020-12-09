<?php

namespace App\Containers\Product\UI\API\Requests;

use App\Ship\Parents\Requests\Request;

/**
 * Class GetProductSkuByIdsRequest.
 */
class GetProductSkuByIdsRequest extends Request
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
             'ids' => 'required|exists:product_sku,id,deleted_at,NULL',
            // '{user-input}' => 'required|max:255',
        ];
    }

    public function messages()
    {
        return [
            'ids.required' => '请选择需要购买的商品',
            'ids.exists' => '该商品已下架，请刷新页面重试',
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
