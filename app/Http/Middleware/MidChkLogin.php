<?php

namespace App\Http\Middleware;

use Closure;
use Cookie;
class MidChkLogin
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


        if(!Cookie::get('uid')){

            echo "<Script>window.location.href='../login'</Script>";

        }
        return $next($request);
    }
}
