<?php

/**
 * @apiGroup           Order
 * @apiName            findOrderBaseByOrderNo
 *
 * @api                {GET} /v1/order/:id Endpoint title here..
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
$router->get('order/{id}', [
    'as' => 'api_order_find_order_by_order_no',
    'uses'  => 'Controller@findOrderByOrderNo',
    'middleware' => [
      'auth:api',
    ],
]);
