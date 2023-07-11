<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PhotoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i=1; $i <=100 ; $i++) { 
            for ($j=1; $j <= 5 ; $j++) { 
                DB::table('images')->insert([
                    'product_id'=>$i,
                    'name'=> 'https://picsum.photos/id/'.rand(1,1000).'/640/480'
                ]);
            }
            
        }
    }
}
