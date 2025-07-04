<?php

/**
 * @apiGroup           Product
 * @apiName            findProductBySkuId
 *
 * @api                {GET} /v1/prod/sku/:id Endpoint title here..
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
$router->get('prod/sku/{id}', [
    'as' => 'api_product_find_product_sku_by_id',
    'uses'  => 'Controller@findProductSkuById',
    'where' => [
        'id' => '([1-9]|[1-9][0-9]+)'
    ],
    'middleware' => [
//      'auth:api',
    ]

]);
