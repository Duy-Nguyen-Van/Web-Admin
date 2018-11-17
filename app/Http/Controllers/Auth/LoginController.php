<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;
use Socialite;
use Exception;
use App\User;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
//Google
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {
            $user = Socialite::driver('google')->stateless()->user();
            
            // $userModel = new User;
            // $createdUser = $userModel->addNew($user);
            // Auth::loginUsingId($createdUser->id);
            // return redirect()->route('home');
        } 
        catch (Exception $e) {
            return redirect('auth/google');
        }
        //dd($user)
        $authUser = $this->createUser($user);
        Auth::login($authUser, true);
        return redirect()->route('index');
    }

    public function createUser($user)
    {
        $authUser = User::where('google_id' , $user->id)->first();
        //dd($authUser)
        if($authUser)
        {
            return $authUser;
        }

        return User::create
        ([
            'name' => $user->name,
            'google_id' => $user->id,
            'email' => $user->email,
        ]);
    }
    
//Facebook
    public function redirectToFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }
    public function handleFacebookCallback()
    {
        try {
            $user = Socialite::driver('facebook')->stateless()->user();
            
            // $userModel = new User;
            // $createdUser = $userModel->addNew($user);
            // Auth::loginUsingId($createdUser->id);
            // return redirect()->route('home');
        } 
        catch (Exception $e) {
            return redirect('auth/facebook');
        }
        dd($user);
        // $authUser = $this->createUser($user);
        // Auth::login($authUser, true);
        // return redirect()->route('index');
    }

    
}
