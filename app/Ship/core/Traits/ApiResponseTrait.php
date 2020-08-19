<?php

namespace Apiato\Core\Traits;


use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Log;

/**
 * Class ResponseTrait
 *
 * @author  Mahmoud Zalt  <mahmoud@zalt.me>
 */
trait ApiResponseTrait
{

    /**
     * 数据响应
     * @param object $request 请求对象
     * @param array $data 数据
     * @param string $status 返回状态
     * @param string $erorcd 返回处理状态
     * @param string $message 返回处理信息
     * @param string $sign 数据签名 防篡改
     * @return false|JsonResponse|string
     * Author: fatetis
     * Date:2020/8/6 000616:06
     */
    protected function response($request, $data, $status, $erorcd, $message, $sign)
    {
        $resno = $this->getUniqueResno($erorcd);

        $response_arr = [
            'charset' => 'UTF-8',
            'sign' => $sign,
            'data' => [
                'header' => [
                    'resno' => $resno,
                    'return_code' => $status,
                    'result_code' => $erorcd,
                    'result_msg' => $message ?: (GlobalStatusCode::$status_texts[$erorcd] ?? ''),
                    'time' => dt(),
                ],
                'body' => $data
            ]
        ];
        $request_arr = [
            'reqno' => $request->input('reqno', ''),
            'url' => $request->url(),
            'path' => $request->path(),
            'data' => $request->all(),
            'ip' => getIP(),
        ];

        $request_json  = je($request_arr);
        $response_json  = je($response_arr);

        $text = "请求单号：{$request_arr['reqno']}，响应单号：{$resno}，路径：{$request->path()}\n请求数据：{$request_json}\n响应数据：{$response_json}";
        Log::channel('api')->info($text);

        return empty($message) ?  $this->apiJson($response_arr) : $response_json;
    }

    public function successResponse($request, $data = [], $erorcd = GlobalStatusCode::RESULT_SUCCESS_CODE, $message = '', $sign = '')
    {
        return $this->response($request, $data, GlobalStatusCode::RETURN_SUCCESS_CODE, $erorcd, $message, $sign);
    }

    public function errorResponse($request, $message, $data = [], $erorcd = GlobalStatusCode::RESULT_USER_FAIL_CODE, $sign = '')
    {
        return $this->response($request, $data, GlobalStatusCode::RETURN_SUCCESS_CODE, $erorcd, $message, $sign);
    }

    protected function getUniqueResno($erorcd)
    {
        return date('YmdHis').randNum().$erorcd;
    }

    public function apiJson($message, $status = 200, array $headers = [], $options = 256)
    {
        return new JsonResponse($message, $status, $headers, $options);
    }


}
