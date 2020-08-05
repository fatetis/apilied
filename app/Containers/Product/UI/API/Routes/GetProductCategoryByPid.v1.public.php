<?php

/**
 * @apiGroup           Product
 * @apiName            getProductCategoryByPid
 *
 * @api                {GET} /v1/prod/category/pid Endpoint title here..
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
$router->get('prod/category/pid', [
    'as' => 'api_product_get_product_category_by_pid',
    'uses'  => 'Controller@getProductCategoryByPid',
    'middleware' => [
//      'auth:api',
    ],
]);
