<?php

/**
 * @apiGroup           Login
 * @apiName            loginUsingUserName
 *
 * @api                {POST} /v1/login/name Endpoint title here..
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
$router->post('login/name', [
    'as' => 'api_login_login_using_user_name',
    'uses'  => 'Controller@loginUsingUserName',
    'middleware' => [
//      'auth:api',
    ],
]);
