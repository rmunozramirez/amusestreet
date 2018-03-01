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


/* Route::get('/liveroom/{slug}', ['as' =>'pages.liveroom', 'uses' => 'PagesController@getLiveroom']); */
Route::get('/contact', 'PagesController@getContact');
Route::get('/contact', 'PagesController@getContact');
Route::get('/about','PagesController@getAbout');
Route::get('/', 'HomeController@index');
Route::resource('home', 'HomeController');
Route::resource('/channels', 'ChannelController');
Route::resource('/subcategories', 'SubcategoryController');
Route::resource('/categories', 'CategoryController');
Route::resource('/liveroom', 'LiveroomController');
