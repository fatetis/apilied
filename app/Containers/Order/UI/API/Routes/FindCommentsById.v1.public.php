<?php

/**
 * @apiGroup           Order
 * @apiName            findCommentsById
 *
 * @api                {GET} /v1/comment/:id Endpoint title here..
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
$router->get('comment/{id}', [
    'as' => 'api_order_find_comments_by_id',
    'uses'  => 'Controller@findCommentsById',
    'middleware' => [
//      'auth:api',
    ],
]);
