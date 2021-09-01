<?php

/**
 * @apiGroup           Order
 * @apiName            getAllOrderBaseByStatus
 *
 * @api                {GET} /v1/order/list/:status Endpoint title here..
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
$router->get('orders/list', [
    'as' => 'api_order_get_all_order_by_status',
    'uses'  => 'Controller@getAllOrderByStatus',
    'middleware' => [
      'auth:api',
    ],
]);
