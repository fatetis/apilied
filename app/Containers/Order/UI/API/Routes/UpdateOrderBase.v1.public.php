<?php

/**
 * @apiGroup           Order
 * @apiName            updateOrderBase
 *
 * @api                {POST} /v1/order/update/:orderno Endpoint title here..
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
$router->post('order/update/{orderno}', [
    'as' => 'api_order_update_order_base',
    'uses'  => 'Controller@updateOrderBase',
    'middleware' => [
      'auth:api',
    ],
]);
