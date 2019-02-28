<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



$api = app('Dingo\Api\Routing\Router');
$api->version('v1', function ($api) {

    $api->group(['namespace' => 'App\Http\Controllers'], function ($api) {
        $api->post('/login', 'IndexApiController@login');
        $api->get('/kelist/{id}/{sbz?}', 'IndexApiController@todaykelist');
        $api->post('/apply/{id}', 'IndexApiController@applyke');
        $api->get('/applykelist/{compid}', 'IndexApiController@applykelist');
        $api->get('/history/{id}/{sbz?}', 'IndexApiController@history');
        $api->post('/report/{compid?}', 'IndexApiController@report');
        $api->get('/getuserlist/{op}/{compid}/{no?}', 'IndexApiController@getuserlist');
        $api->post('/pass', 'IndexApiController@pass');
        $api->post('/adduser', 'IndexApiController@adduser');
        $api->post('/saveuser', 'IndexApiController@saveuser');
        $api->get('/paike/{compid}/{w}', 'IndexApiController@paike');
		$api->post('/addpk', 'IndexApiController@addpk');
		$api->post('/updatepk', 'IndexApiController@updatepk');
        $api->post('/reg', 'IndexApiController@reg');
        $api->post('/copylastpk/{w}/{compid}', 'IndexApiController@copylastpk');

        $api->get('/gettype/{compid}', 'IndexApiController@gettype');
        $api->post('/updatetype/{compid}', 'IndexApiController@updatetype');


    });



});