<?php

namespace App\Providers;


//use Gate;
use App\Models\User;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;


class AuthServiceProvider extends ServiceProvider

{
    public static $permission = [
        'dashboard'=>['superadmin', 'admin'],
        'user-index'=>['admin'],
        'payment-update'=>['superadmin']
    ];
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        //
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {

/*
        Gate::define('dashboard',function (User $user){
            if ($user->role == 'admin'){
                return true;
            }
        });
    */

        foreach (self::$permission as $feature => $roles){

            Gate::define($feature, function (User $user) use ($roles) {
                if(in_array($user->role, $roles)){
                    return true;



            }


            });

        }


    }
}
