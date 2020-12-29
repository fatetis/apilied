<?php

/**
 * @apiGroup           Pay
 * @apiName            balancePay
 *
 * @api                {POST} /v1/balance/pay Endpoint title here..
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
$router->post('balance/pay', [
    'as' => 'api_pay_balance_pay',
    'uses'  => 'Controller@balancePay',
    'middleware' => [
      'auth:api',
    ],
]);
