<?php

/**
 * @apiGroup           Product
 * @apiName            getProductBySkuIds
 *
 * @api                {GET} /v1/prod/sku/get Endpoint title here..
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
$router->get('prod/sku/get', [
    'as' => 'api_product_get_product_sku_by_ids',
    'uses'  => 'Controller@getProductSkuByIds',
    'middleware' => [
//      'auth:api',
    ],
]);
