<?php
namespace App\MyClass;

use Illuminate\Support\Facades\Log;

class Bar{
    public function __construct(){
        Log::info("Bar class instantiated");
    }
    public static function testbar(){
        Log::info("Testbar called");
    }
}