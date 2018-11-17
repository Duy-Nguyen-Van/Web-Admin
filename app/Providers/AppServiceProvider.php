<?php

namespace App\Providers;

use Cart;
use App\Type_products;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('header',function($view){
            $cate = Type_products::all();
            $view->with('cate',$cate);
        });

        view()->composer('header', function($view) {
            $count = Cart::count();
            $view->with('count',$count);
        });

        view()->composer('header', function($view) {
            $total = Cart::subtotal();
            $view->with('total',$total);
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
