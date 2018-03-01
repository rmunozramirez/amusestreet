<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Carbon\Carbon;
use App\Channel;
use App\Subcategory;
use App\Category;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
		Schema::defaultStringLength(191);
		
		View::composer('*', function ($view) {
			/*$month = Carbon::now()->format('F');*/

        $current_category = Category::with('subcategories')->orderBy('title', 'desc')->paginate(10);
        $current_subcategory= Subcategory::with('channels')->orderBy('title', 'desc')->paginate(10);

			$view->withCurrent_category($current_category)->withCurrent_subcategory($current_subcategory);
		});
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
