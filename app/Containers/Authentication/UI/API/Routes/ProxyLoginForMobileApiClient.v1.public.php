<?php

/**
 * @apiGroup           Authentication
 * @apiName            ProxyLoginForMobileApiClient
 *
 * @api                {POST} /v1/clients/api/mobile/login Endpoint title here..
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
$router->post('clients/api/mobile/login', [
    'as' => 'api_authentication_proxy_login_for_mobile_api_client',
    'uses'  => 'Controller@ProxyLoginForMobileApiClient'
]);
