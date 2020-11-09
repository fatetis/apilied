<?php

/**
 * @apiGroup           User
 * @apiName            createUserAddress
 *
 * @api                {POST} /v1/address/create Endpoint title here..
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
$router->post('address/modify', [
    'as' => 'api_user_update_or_create_user_address',
    'uses'  => 'Controller@updateOrCreateUserAddress',
    'middleware' => [
      'auth:api',
    ],
]);
