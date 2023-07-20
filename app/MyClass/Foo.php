<?php
namespace App\MyClass;

use Illuminate\Support\Facades\Log;

class Foo{
    public function __construct(){
        Log::info("Foo class instantiated");
    }
    public function testfoo(){
        Log::info("Testfoo called");
    }
}