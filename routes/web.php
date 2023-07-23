<?php
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvitationController;
use App\Http\Controllers\ProductController;
use App\Models\Subcategory;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

/* Route::get('/', function () {
    return view('website.home');
}); 
Route::view('/', 'welcome');
*/

//category
//route::get('/category', [CategoryController::class, 'index']);

//resource
Route::post('/tokens/create', function (Request $request) {
    $token = $request->user()->createToken("round53token");
 
    return ['token' => $token->plainTextToken,'alltokens'=>$request->user()->tokens];
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::prefix("admin")->middleware("admin")->group(function(){
    Route::resources([
        'category' => CategoryController::class,
        'subcategory' => SubcategoryController::class,
        'product' => ProductController::class,
    ]);
    
});

//website
/* Route::get('/', function () {
    return view('welcome');
    }); 
    Route::get('about', function () {
    return view('about');
    });
    Route::get('products', function () {
    return view('products');
    });
    Route::get('services', function () {
    return view('services');
    });
*/
Route::get('/', 'App\Http\Controllers\WebsiteController@home');
Route::get('/di', 'App\Http\Controllers\WebsiteController@di');
/* Route::get('/', function(){
    // $sc = new Subcategory();
    // dd($sc);
    dd(app(Subcategory::class));
}); */
Route::get("/getsubcat/{id}",[SubcategoryController::class, 'getSubcat']);
//request segments
Route::get('/test/segment/idb/bisew', [ProductController::class, 'testsegment']);
//Laravel 5.7 also introduced the “tuple” syntax 
// route::get('/', [WebsiteController::class, 'home']);
// Route::get('/about', [WebsiteController::class, 'about'])->name('about');
/* Route::prefix('user')->middleware('auth')->group(function(){
    Route::get('/about', [
        // 'as' => 'about',
        'uses' => 'App\Http\Controllers\WebsiteController@about',
        ]);
    Route::get('/products', [WebsiteController::class, 'products']);
    Route::get('/services', [WebsiteController::class, 'services']);
    Route::resources([
        'category' => CategoryController::class,
    ]);
}); */
Route::middleware('auth')->group(function(){
    Route::get('/about', [
        // 'as' => 'about',
        'uses' => 'App\Http\Controllers\WebsiteController@about',
        ]);
    Route::get('/products', [WebsiteController::class, 'products']);
    Route::get('/services', [WebsiteController::class, 'services']);
    Route::get('/testblade', [WebsiteController::class, 'testblade']);
    Route::post('/del_img', [ProductController::class, 'delete_img']);

    Route::post('/productrestore/{id}', [ProductController::class, 'restore'])->name('product.restore');
    
});


Route::get('/cat/{id?}', [CategoryController::class, 'single']);
Route::get('invitations/{invitation}/{answer}', [InvitationController::class, 'index'])->name('invitations')->middleware('signed');
/* Route::get('invitations/{invitation}/{answer}', [InvitationController::class, 'index'])->name('invitations'); */

################### clear cache in shared web hosting ############
Route::get('/cc', function() {
    $exitCode = Artisan::call('cache:clear');
    echo "cache cleared";
});
Route::get('/vc', function() {
    $exitCode = Artisan::call('view:clear');
    echo "view cleared";
});
/* Route::get('/rl', function() {
    $exitCode = Artisan::call('route:list');
    echo $exitCode;    
}); */

require __DIR__.'/auth.php';
