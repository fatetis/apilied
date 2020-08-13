<?php

/**
 * @apiGroup           Login
 * @apiName            CreateVerifyCode
 *
 * @api                {POST} /v1/verify/code Endpoint title here..
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
$router->post('mobile/verify/code', [
    'as' => 'api_login_create_verify_code',
    'uses'  => 'Controller@CreateMobileVerifyCode',
    'middleware' => [
//      'auth:api',
    ],
]);
