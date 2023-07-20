<?php
namespace App\MyClass;

use Illuminate\Support\Facades\Log;

class Idb{
    public function __construct(){
        Log::info("Idb class instantiated");
    }
    public static function testidb(){
        Log::alert("testidb called");
        Bar::testbar();
    }
}