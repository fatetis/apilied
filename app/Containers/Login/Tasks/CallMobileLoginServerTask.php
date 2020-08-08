<?php

namespace App\Containers\Login\Tasks;

use App\Containers\Authentication\Exceptions\LoginFailedException;
use App\Ship\Parents\Tasks\Task;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\App;

class CallMobileLoginServerTask extends Task
{

    CONST AUTH_ROUTE = '/v1/clients/api/mobile/login';

    public function __construct()
    {
        // ..
    }

    public function run($data)
    {
        // Full url to the oauth token endpoint
        $authFullApiUrl = Config::get('apiato.api.url') . self::AUTH_ROUTE;

        $headers = ['HTTP_ACCEPT' => 'application/json'];

        // Create and handle the oauth request
        $request = Request::create($authFullApiUrl, 'POST', $data, [], [], $headers);

        $response = App::handle($request);

        // response content as Array
        $content = \GuzzleHttp\json_decode($response->getContent(), true);
dd($response, $content);
        // If the internal request to the oauth token endpoint was not successful we throw an exception
//        if (!$response->isSuccessful()) {
//            throw new LoginFailedException($content['message'], null, $response->getStatusCode());
//        }

        return $content;
    }
}
