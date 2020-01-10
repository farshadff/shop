<?php


Route::view('/guarantee', 'guarantee::submit.submit')->name('guarantee.submit.submit');


Route::post('/guarantee-store', 'nicolas\Guarantee\Http\Controllers\GuaranteeController@store')->name('guarantee.guarantee-store');




//Route::view('/guarantees', 'guarantee::submit.submit');
Route::get('/guarantees', 'nicolas\Guarantee\Http\Controllers\GuaranteeController@index')->defaults('_config',[
    'view' => 'guarantee::submit.accept'
])->name('guarantee.submit.accept');
Route::group(['middleware' => ['web']], function () {

});