<?php

/**
 * @apiGroup           Cart
 * @apiName            getCart
 *
 * @api                {GET} /v1/cart/get Endpoint title here..
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
$router->get('cart/get', [
    'as' => 'api_cart_get_cart',
    'uses'  => 'Controller@getCart',
    'middleware' => [
      'auth:api',
    ],
]);
