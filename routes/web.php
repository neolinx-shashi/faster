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

Route::get('/', 'Auth\LoginController@showLoginForm')->name('login');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/hospital', 'Back\HospitalController');
Route::get('/deleteHospital/{id}', 'Back\HospitalController@destroy');
Route::get('/hospitalStatus/{id}/{stat}', 'Back\HospitalController@status');

Route::resource('/paramedic', 'Back\ParamedicController');
Route::get('/deleteparamedic/{id}', 'Back\ParamedicController@destroy');
Route::get('/paramedicstatus/{id}/{stat}', 'Back\ParamedicController@status');

Route::resource('/patient', 'Back\PatientController');
Route::get('/get-symptoms/{id}', 'Back\PatientController@getSymptoms');
Route::get('/get-examination/{id}', 'Back\PatientController@getExamination');
Route::get('/deletepatient/{id}', 'Back\PatientController@destroy');
Route::get('/patientarchive', 'Back\PatientController@archive');
Route::get('/archivepatient/{id}', 'Back\PatientController@archived');
Route::get('/patient-detail/{id}', 'Back\PatientController@detail');
Route::get('/patient-new/{id}', 'Back\PatientController@newStatus');
Route::get('/get-arrival-time/{id}/{time}', 'Back\PatientController@getArrivalTime');

Route::resource('/admin', 'Back\AdminController');
Route::get('/deleteadmin/{id}', 'Back\AdminController@destroy');
Route::get('/admin-status/{id}/{stat}', 'Back\AdminController@status');

Route::get('/get-patient-list', 'HomeController@getTodayPatients');
Route::get('/get-hospital-list', 'HomeController@getHospitalList');
Route::get('/get-paramedic-list', 'HomeController@getParamedicList');
Route::get('/total-patients', 'HomeController@totalPatients');



