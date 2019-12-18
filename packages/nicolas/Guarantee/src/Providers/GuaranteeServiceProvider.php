<?php

namespace nicolas\Guarantee\Providers;

use Illuminate\Support\ServiceProvider;
use Webkul\Admin\Providers\EventServiceProvider;
use Illuminate\Contracts\Debug\ExceptionHandler;
use Webkul\Admin\Exceptions\Handler;
use Webkul\Core\Tree;

/**
 * Admin service provider
 *
 * @author    Jitendra Singh <jitendra@webkul.com>
 * @copyright 2018 Webkul Software Pvt Ltd (http://www.webkul.com)
 */
class GuaranteeServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->loadRoutesFrom(__DIR__ . '/../Http/routes.php');
        $this->loadMigrationsFrom(__DIR__ .'/../Database/Migrations');

//        $this->loadTranslationsFrom(__DIR__ . '/../Resources/lang', 'admin');
//
//        $this->publishes([
//            __DIR__ . '/../../publishable/assets' => public_path('vendor/webkul/admin/assets'),
//        ], 'public');
//
        $this->loadViewsFrom(__DIR__ . '/../Resources/views', 'guarantee');
//
//        $this->composeView();
//
//        $this->registerACL();
//
//        $this->app->register(EventServiceProvider::class);
//
//        $this->app->bind(
//            ExceptionHandler::class,
//            Handler::class
//        );
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
    }

    /**
     * Bind the the data to the views
     *
     * @return void
     */
    protected function composeView()
    {

    }

    /**
     * Registers acl to entire application
     *
     * @return void
     */
    public function registerACL()
    {

    }


}
