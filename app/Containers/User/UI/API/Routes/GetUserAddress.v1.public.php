<?php

/**
 * @apiGroup           User
 * @apiName            getUserAddress
 *
 * @api                {GET} /v1/address/get Endpoint title here..
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
$router->get('address/get', [
    'as' => 'api_user_get_user_address',
    'uses'  => 'Controller@getUserAddress',
    'middleware' => [
      'auth:api',
    ],
]);
