<?php

/**
 * @apiGroup           User
 * @apiName            userCenter
 *
 * @api                {GET} /v1/user/center Endpoint title here..
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
$router->get('user/center', [
    'as' => 'api_user_user_center',
    'uses'  => 'Controller@userCenter',
    'middleware' => [
      'auth:api',
    ],
]);
