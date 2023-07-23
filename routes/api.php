<?php

use Illuminate\Http\Request;
// use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use App\Models\Product;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/cat/{id?}', [CategoryController::class, 'single']);
// Route::get('/cat/{id?}', [CategoryController::class, 'single']);
Route::apiResource('photo', 'App\http\Controllers\API\PhotoController');
Route::middleware("auth:sanctum")->apiResource('product', 'App\http\Controllers\API\ProductController');
Route::apiResource('cg', 'App\http\Controllers\CategoryController');
/* Route::get('products', function () {
    return Product::all();
    });
Route::get('products/{id}', function ($id) {
        return Product::findOrFail($id);
        }); */
           
/*
<h1>Api Resource controller</h1>
Verb          Path                        Action  Route Name
GET           /users                      index   users.index
POST          /users                      store   users.store
GET           /users/{user}               show    users.show
PUT|PATCH     /users/{user}               update  users.update
DELETE        /users/{user}               destroy users.destroy
*/


