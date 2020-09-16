<?php

/**
 * @apiGroup           Product
 * @apiName            validateProductBySkuIdAndNum
 *
 * @api                {POST} /v1/product/validate Endpoint title here..
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
$router->post('product/validate', [
    'as' => 'api_product_validate_product_by_sku_id_and_num',
    'uses'  => 'Controller@validateProductBySkuIdAndNum',
    'middleware' => [
      'auth:api',
    ],
]);
