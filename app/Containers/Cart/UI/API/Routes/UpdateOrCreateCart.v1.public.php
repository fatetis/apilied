<?php

/**
 * @apiGroup           Cart
 * @apiName            createCart
 *
 * @api                {POST} /v1/cart/create Endpoint title here..
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
$router->post('cart/modify', [
    'as' => 'api_cart_create_cart',
    'uses'  => 'Controller@updateOrCreateCart',
    'middleware' => [
      'auth:api',
    ],
]);
