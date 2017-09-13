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

Route::middleware('auth')->group(function () {

    Route::post('approve_request', ['as' => 'approve_request', 'uses' => 'Admin\PendingApprovalController@approve']);

    Route::post('reject_request', ['as' => 'reject_request', 'uses' => 'Admin\PendingApprovalController@reject']);

    Route::post('store_doctor_prescription', [
            'as' => 'store_doctor_prescription',
            'uses' => 'Admin\DoctorsPrescriptionController@store'
        ]);


    Route::prefix('admin')->namespace('Admin')->group(function (){

        Route::get('bloodbank/show/{id}', 'BloodBankController@show');
        Route::get('prescription/show/{id}', 'PrescriptionController@show');

        Route::get('vaccination/create', 'VaccinationController@create');
        Route::get('vaccination/single_vaccine', 'VaccinationController@single_vaccine');

    });

});

