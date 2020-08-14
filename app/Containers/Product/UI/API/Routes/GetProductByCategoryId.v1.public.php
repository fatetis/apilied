<?php

/**
 * @apiGroup           Product
 * @apiName            getProductByCategoryId
 *
 * @api                {POST} /v1/product/list Endpoint title here..
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
$router->post('product/list', [
    'as' => 'api_product_get_product_by_category_id',
    'uses'  => 'Controller@getProductByCategoryId',
    'middleware' => [
//      'auth:api',
    ],
]);
