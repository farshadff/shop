<?php


Route::view('/test', 'payment::test.edit');

Route::group(['middleware' => ['web']], function () {

});