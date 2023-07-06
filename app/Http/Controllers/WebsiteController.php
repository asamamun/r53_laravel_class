<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function home(){
        $users = User::paginate(2);
        // return view('website.home',compact('users'));
        return view('website.home',['users' => $users]);
    }
    public function about(){
        return view('website.about');
    }
    public function products(){
        return view('website.products');
    }
    public function services(){
        return view('website.services');
    }
}
