<?php

/**
 * @apiGroup           Index
 * @apiName            getIndexAdv
 *
 * @api                {GET} /v1/ Endpoint title here..
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
$router->get('index/adv', [
    'as' => 'api_index_get_index_adv',
    'uses'  => 'Controller@getIndexAdv',
    'middleware' => [
//      'auth:api',
    ],
]);
