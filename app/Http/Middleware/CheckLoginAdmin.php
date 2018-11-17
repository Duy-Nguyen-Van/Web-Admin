<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class CheckLoginAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //Check login when put admin in URL
        if (!Auth::check()) {
            return redirect()->route('admin.login');
        }
        return $next($request);
    }
}
