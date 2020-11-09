<?php

/**
 * @apiGroup           User
 * @apiName            findUserAddressByUserIdAndId
 *
 * @api                {GET} /v1/address/find Endpoint title here..
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
$router->get('address/find', [
    'as' => 'api_user_find_user_address_by_user_id_and_id',
    'uses'  => 'Controller@findUserAddressByUserIdAndId',
    'middleware' => [
      'auth:api',
    ],
]);
