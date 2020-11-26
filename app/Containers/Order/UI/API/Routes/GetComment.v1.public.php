<?php

/**
 * @apiGroup           Order
 * @apiName            getComments
 *
 * @api                {GET} /v1/comment/get Endpoint title here..
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
$router->get('comment/{prod_id}', [
    'as' => 'api_order_get_comments',
    'uses'  => 'Controller@getComments',
    'middleware' => [
//      'auth:api',
    ],
]);
