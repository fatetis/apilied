<?php

/**
 * @apiGroup           Order
 * @apiName            createComments
 *
 * @api                {POST} /v1/comment/create Endpoint title here..
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
$router->post('comment/create', [
    'as' => 'api_order_create_comments',
    'uses'  => 'Controller@createComments',
    'middleware' => [
      'auth:api',
    ],
]);
