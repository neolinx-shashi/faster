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
    //return $request->user();
    
});
Route::get('get-token', 'Api\TokenController@getToken');
Route::post('check-login', 'Api\LoginController@checkLogin');
Route::post('check-status', 'Api\LoginController@checkLoginStatus');
Route::post('store-symptom', 'Api\PatientSymptomController@index');
Route::get('get-paramedic-id/{id}', 'Api\PatientSymptomController@getParamedicId');
Route::post('logout', 'Api\LoginController@logOut');
Route::get('hospital-list', 'Api\PatientSymptomController@getHospitalList');
Route::get('hospital-number/{id}', 'Api\PatientSymptomController@getHospitalNumber');
Route::get('today-list/{pid}', 'Api\PatientSymptomController@todayPatientList');
Route::get('get-patient-detail/{id}', 'Api\PatientSymptomController@getPatientDetail');
Route::get('get-total-score/{id}', 'Api\PatientSymptomController@getTotalScore');
Route::post('edit-symptom', 'Api\PatientSymptomController@editPatient');

Route::get('test', 'Api\LoginController@test');
