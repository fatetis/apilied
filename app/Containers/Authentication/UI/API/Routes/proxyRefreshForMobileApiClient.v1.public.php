<?php

/**
 * @apiGroup           Authentication
 * @apiName            proxyRefreshForMobileApiClient
 *
 * @api                {POST} /v1/client/api/mobile/refresh Endpoint title here..
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
$router->post('client/api/mobile/refresh', [
    'as' => 'api_authentication_proxy_refresh_for_mobile_api_client',
    'uses'  => 'Controller@proxyRefreshForMobileApiClient',
]);
