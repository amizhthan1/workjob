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

Route::get('/', function () {
    return view('welcome');
});

Route::resource('posts', 'PostController');
Route::get('posts/destroy/{id}', ['uses' => 'PostController@destroy']);
Route::get('post/delete','PostController@delete');
Route::post('posts/{id}','PostController@update');

Route::get('tags/{id}','TagController@show');
