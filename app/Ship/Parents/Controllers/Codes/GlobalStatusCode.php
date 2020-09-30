<?php

namespace App\Ship\Parents\Controllers\Codes;

/**
 * Class ApiController.
 *
 * @author  Mahmoud Zalt <mahmoud@zalt.me>
 */
class GlobalStatusCode
{

    // 1-loginContainer

    const YES = 1;
    const NO = 0;


    const RETURN_SUCCESS_CODE = 'S';
    const RETURN_FAIL_CODE = 'F';

    const RESULT_SUCCESS_CODE = '00000';
    // 用户端错误码
    const RESULT_USER_FAIL_CODE = 'A0001';
    // 登录模块
    const LOGIN_MAXED_NUM = 'A1001';
    const LOGIN_VERIFY_CODE_ERROR = 'A1002';
    const LOGIN_NOT_ISSET_VERIFY_CODE = 'A1003';
    const LOGIN_VERIFY_CODE_OVERDUE = 'A1004';
    const LOGIN_NOT_ISSET_MOBILE = 'A1005';
    const VERIFY_CODE_ISSET_ACCOUNT = 'A1006';
    const VERIFY_CODE_NOT_ISSET_ACCOUNT = 'A1007';
    const VERIFY_CODE_MAXED_GET = 'A1008';
    // 产品模块
    const PRODUCT_STOCK_INSUFFICIENT = 'A2001';

    // 服务端错误码
    const RESULT_SYSTEM_FAIL_CODE = 'B0001';
    const VERIFY_CODE_NOT_USING_TYPE = 'B0002';
    const MODEL_NOTHING_RESULT = 'B0003';
    // cdn端错误码
    const RESULT_CDN_FAIL_CODE = 'C0001';
    // 验证码类型默认码
    const VERIFY_CODE_DEFAULT_TYPE = 0; // validateVerifyCodeAction查找手机验证码类型的默认值
    const VERIFY_CODE_REPEAT_NUM_DEFAULT = 3; // validateVerifyCodeAction查找手机验证码最大错误次数的默认值
    const VERIFY_CODE_GET_NUM_DEFAULT = 3; // validateVerifyCodeAction查找手机验证码最大错误次数的默认值
    const VERIFY_CODE_DEFAULT_USING_TYPE = 0; // validateVerifyCodeAction查找手机验证码使用类型的默认值

    // 错误码文本框
    public static $status_texts = [
        'S' => '通讯成功',
        'F' => '通讯失败',
        '00000' => '处理成功',
        'A0001' => '用户端错误',
        'A1001' => '今日错误次数过多，最多允许3次输入错误',
        'A1002' => '验证码错误，最多允许3次输入错误',
        'A1003' => '请先获取验证码',
        'A1004' => '验证码已过期，请重新获取验证码，每天最多获取3次验证码',
        'A1005' => '手机号不存在',
        'A1006' => '已存在该账户',
        'A1007' => '不存在该账户',
        'A1008' => '获取次数已达上限，每天最多获取3次验证码',

        'A2001' => '商品库存不足',

        'B0001' => '系统端错误',
        'B0002' => '系统无此验证码使用类型',
        'B0003' => '数据不存在',

        'C0001' => 'CDN端错误',
    ];

}
