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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/password-change1', 'HomeController@changePassword')->name('password1.change');
Route::post('/password-update2', 'HomeController@updatePassword')->name('password2.update');
// Authentication Routes...
Route::get('admin/home', 'AdminController@index');
Route::get('admin', 'Admin\LoginController@showLoginForm')->name('admin.login');
Route::post('admin', 'Admin\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');
        // Password Reset Routes...
Route::get('admin-password/reset', 'Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
Route::post('admin-password/email', 'Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
Route::get('admin-password/reset/{token}', 'Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');
Route::post('admin-password/reset', 'Admin\ResetPasswordController@reset');

// Setting Pages
Route::get('/admin/ChnPass','SettingsController@index');
Route::post('/password-update','SettingsController@Update_pass')->name('admin.password.update'); 


