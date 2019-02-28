<?php

namespace App\Http\Middleware;

use Closure;
use Cookie;
class AdminChkLogin
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


        if( Cookie::get('utype')<>1){

            echo "<Script>history.back(-1);</Script>";

        }
        return $next($request);
    }
}
