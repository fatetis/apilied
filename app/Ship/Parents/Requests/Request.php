<?php

namespace App\Ship\Parents\Requests;

use Apiato\Core\Abstracts\Requests\Request as AbstractRequest;
use Apiato\Core\Traits\ApiResponseTrait;
use App\Ship\Transporters\DataTransporter;
use App\Ship\Parents\Controllers\ApiController;

/**
 * Class Request
 *
 * @author  Mahmoud Zalt  <mahmoud@zalt.me>
 */
abstract class Request extends AbstractRequest
{
    use ApiResponseTrait;

    /**
     * If no custom Transporter is set on the child this will be default.
     *
     * @var string
     */
    protected $transporter = DataTransporter::class;


    /**
     * 重写异常返回抛错方式
     * @param \Illuminate\Contracts\Validation\Validator $validator
     * Author: fatetis
     * Date:2020/8/4 000421:31
     */
    public function failedValidation(\Illuminate\Contracts\Validation\Validator $validator)
    {
        header('content-type:application/json;charset=utf-8');
        exit($this->errorResponse(request(), '请求拦截:'.$validator->errors()->first()));
    }


}
