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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/hello-world', function(Request $request){
    return response()->json('Hello World! Welcome to codingpearls.com', 200);
});

//Product API
Route::get('/getproductlist', 'ProductController@getProductAPIList');
Route::get('/deleteproduct/{id}', 'ProductController@getProductAPIDelete');
Route::post('/addproduct', 'ProductController@postProductAPIAdd');

//Store API
Route::get('/getstorelist', 'StoreController@getStoreAPIList');
Route::get('/deletestore/{id}', 'StoreController@getStoreAPIDelete');

//User API
Route::get('/getuserlist', 'UserController@getUserAPIList');
Route::get('/deleteuser/{id}', 'UserController@getUserAPIDelete');

