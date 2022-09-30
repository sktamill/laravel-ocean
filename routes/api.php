<?php

use App\Http\Controllers\PredictionController;
use App\Http\Controllers\SingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
    return $request->user();
});

Route::get('/sings',[SingController::class, 'getSings']);
Route::post('/prediction',[PredictionController::class, 'getPrediction']);
Route::post('/create',[PredictionController::class, 'createPrediction']);


