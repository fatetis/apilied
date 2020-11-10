<?php

/**
 * @apiGroup           Cart
 * @apiName            deleteCart
 *
 * @api                {POST} /v1/cart/delete Endpoint title here..
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
$router->post('cart/delete', [
    'as' => 'api_cart_delete_cart',
    'uses'  => 'Controller@deleteCart',
    'middleware' => [
      'auth:api',
    ],
]);
