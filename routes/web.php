<?php

use App\Http\Controllers\PredictionController;
use App\Http\Controllers\SingController;
use Illuminate\Support\Facades\Route;

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


Route::any('/{page}',[SingController::class, 'index'])->where('page','(?!api).*$');


