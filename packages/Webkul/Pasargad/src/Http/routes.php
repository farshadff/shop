<?php



Route::get('/bank/request', 'Webkul\Pasargad\Http\Controllers\PasargadController@index')->name('pasargad.request');
Route::post('/bank/response', 'Webkul\Pasargad\Http\Controllers\PasargadController@response');
