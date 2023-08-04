<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RuasController;
use App\Http\Controllers\AuthController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/ruas',[RuasController::class, 'index'])->middleware(['auth:sanctum']);
Route::get('/detailruas/{id}',[RuasController::class, 'detail'])->middleware(['auth:sanctum']);
Route::post('/storeruas',[RuasController::class, 'store'])->middleware(['auth:sanctum']);
Route::patch('/updateruas/{id}', [RuasController::class, 'update'])->middleware(['auth:sanctum']);
Route::delete('/deleteruas/{id}', [RuasController::class, 'destroy'])->middleware(['auth:sanctum']);


Route::post('/login',[AuthController::class, 'login']);
Route::post('/register',[AuthController::class, 'register']);
Route::get('/logout',[AuthController::class, 'logout'])->middleware(['auth:sanctum']);