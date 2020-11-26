<?php

/**
 * @apiGroup           Order
 * @apiName            getCommentsByPid
 *
 * @api                {GET} /v1/comment/parent/:id Endpoint title here..
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
$router->get('comment/parent/{pid}', [
    'as' => 'api_order_get_comments_by_pid',
    'uses'  => 'Controller@getCommentsByPid',
    'middleware' => [
//      'auth:api',
    ],
]);
