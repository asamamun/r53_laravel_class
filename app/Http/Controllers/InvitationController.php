<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InvitationController extends Controller
{
/*     public function __invoke($invitation, $answer, Request $request)
    {
    if (! $request->hasValidSignature()) {
    abort(403);
    }
    //do some work
    } */
    public function index($a,$b){
        
    echo "you set $a , $b";
   }
}
