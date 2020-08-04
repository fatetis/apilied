<?php

namespace Apiato\Core\Traits;


use App\Ship\Parents\Controllers\Codes\GlobalStatusCode;
use Illuminate\Support\Facades\Log;

/**
 * Class ResponseTrait
 *
 * @author  Mahmoud Zalt  <mahmoud@zalt.me>
 */
trait ApiResponseTrait
{

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
                    'result_msg' => $message ?: (GlobalStatusCode::$statusTexts[$erorcd] ?? ''),
                    'time' => date('Y-m-d H:i:s', time()),
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

        $text = "响应单号：{$resno}，路径：{$request->path()}\n请求数据：{$request_json}\n响应数据：{$response_json}";
        Log::channel('api')->info($text);

        return $response_json;
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
        $resno = date('YmdHis').randNum().$erorcd;
        return $resno;
    }

}
