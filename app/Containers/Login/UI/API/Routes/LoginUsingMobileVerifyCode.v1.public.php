<?php

/**
 * @apiGroup           Login
 * @apiName            loginUsingMobileVerifyCode
 *
 * @api                {POST} /v1/login/mobile Endpoint title here..
 * @apiDescription     Endpoint description here..
 *
 * @apiVersion         1.0.0
 * @apiPermission      none
 *
 * @apiParam           {String}  parameters here..
 *
 * @apiSuccessExample  {json}  Success-Response:
 * HTTP/1.1 200 OK
{
  // Insert the response of the request here...
}
 */

/** @var Route $router */
$router->post('login/mobile', [
    'as' => 'api_login_login_using_mobile_verify_code',
    'uses'  => 'Controller@loginUsingMobileVerifyCode',
    'middleware' => [
//      'auth:api',
    ],
]);
