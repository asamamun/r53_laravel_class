<?php

namespace App\Providers;

use App\Models\User;
use App\MyClass\Idb;
use Exception;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Log;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind('App\MyClass\Idb', function ($app) {
            return new Idb();
        });
/*         $this->app->bind(Idb::class, function ($app) {
            return new Idb(
            $app->make(Foo::class),
            $app->make(Bar::class),
            );
            }); */
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrapFive();
        Blade::directive('datetime', function () {
            return "<?php echo date('d-m-Y H:i:s A') ?>";
        });
        Blade::directive('ifGuest', function () {
            return "<?php if (auth()->guest()): ?>";
            });
        //Eloquent Events
        User::creating(function ($user) {
            try {
                //message broadcast type works
            Log::info("new user ". $user->name." created");
            } catch (Exception $e) {
            Log::error('Failed adding contact to ThirdPartyService; canceled.');
            return false; // Cancels Eloquent create()
            } 
        });   
    }
}
