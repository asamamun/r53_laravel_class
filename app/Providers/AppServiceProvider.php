<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
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
    }
}
