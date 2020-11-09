<?php

/**
 * @apiGroup           Region
 * @apiName            getRegionPCA
 *
 * @api                {GET} /v1/region/pca/get Endpoint title here..
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
$router->get('region/pca/get', [
    'as' => 'api_region_get_region_p_c_a',
    'uses'  => 'Controller@getRegionPCA',
    'middleware' => [
      'auth:api',
    ],
]);
