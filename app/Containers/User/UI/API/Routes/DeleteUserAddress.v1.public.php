<?php

/**
 * @apiGroup           User
 * @apiName            deleteUserAddress
 *
 * @api                {POST} /v1/address/delete Endpoint title here..
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
$router->post('address/delete', [
    'as' => 'api_user_delete_user_address',
    'uses'  => 'Controller@deleteUserAddress',
    'middleware' => [
      'auth:api',
    ],
]);
