<?php

/**
 * @apiGroup           Product
 * @apiName            findProductDetailById
 *
 * @api                {GET} /v1/product/detail/:id Endpoint title here..
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
$router->get('prod/detail/{id}', [
    'as' => 'api_product_find_product_detail_by_id',
    'uses'  => 'Controller@findProductDetailById',
    'middleware' => [
//      'auth:api',
    ],
]);
