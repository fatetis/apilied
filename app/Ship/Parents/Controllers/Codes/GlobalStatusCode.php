<?php

namespace App\Ship\Parents\Controllers\Codes;

/**
 * Class ApiController.
 *
 * @author  Mahmoud Zalt <mahmoud@zalt.me>
 */
class GlobalStatusCode
{

    const YES = 1;
    const NO = 0;


    const RETURN_SUCCESS_CODE = 'S';
    const RETURN_FAIL_CODE = 'F';

    const RESULT_SUCCESS_CODE = '00000';
    const RESULT_USER_FAIL_CODE = 'A0001';
    const RESULT_SYSTEM_FAIL_CODE = 'B0001';
    const RESULT_CDN_FAIL_CODE = 'C0001';

    public static $statusTexts = [
        'S' => '通讯成功',
        'F' => '通讯失败',
        '00000' => '处理成功',
        'A0001' => '用户端错误',
        'B0001' => '系统端错误',
        'C0001' => 'CDN端错误',
    ];

}
