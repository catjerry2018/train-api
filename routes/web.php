<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('ts', function(){
    return view("tousu");
});


Route::get('login', function(){
    return view("login");
});
Route::post('login', 'IndexController@login');

Route::get('loginout', 'IndexController@loginout');



Route::group(['middleware'=>['web','MidChkLogin']], function(){
//中间件

    Route::get('/', 'IndexController@menu');

    Route::get('kecheng/{id}', 'IndexController@kecheng');
    Route::get('history/{id}', 'IndexController@history');

    Route::post('apply/{id}', 'IndexController@applyke');

    Route::get('report', function(){
        return view('report')->with("tid",Cookie::get('uid'))->with('sid',0)->with('m',date('n'));
    });

    Route::post('report', 'IndexController@getreport');

    Route::any('my', 'IndexController@myprofile');

    Route::get('keping/{id}', 'IndexController@keping');
});


Route::group(['middleware'=>['web','AdminChkLogin']], function(){
//管理员中间件
    Route::get('paike/{w}', 'IndexController@index');

    Route::post('updatepk/{id}', 'IndexController@updatepk');
    Route::post('addpk/0', 'IndexController@addpk');

    Route::get('user/{type}', 'IndexController@userlist');
    Route::post('saveuser/{type}', 'IndexController@saveuser');
    Route::post('adduser/{type}', 'IndexController@adduser');

    Route::get('adminke/0',function(){
        return view("adminke");
    });

});