<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $c = [
            'Automobiles' => ['Car', 'Bike', 'Truck', 'Van'],
            'Property' => ['Land', 'Flat', 'House', 'Rent'],
            'Electronics' => ['TV', 'Computer', 'Mobile'],
            'Accessories' => [],
            'Beauty' => [''],
            'Men' => ['Shirt', 'Pant', 'Watch', 'Shoe', 'Sunglass', 'Panjabi', 'Jacket'],
            'Women' => ['Top', 'Pant', 'Watch', 'Shoe', 'Sunglass', 'Sharee', 'Jacket'],
        ];
        foreach ($c as $k => $v) {
            $c = new Category();
            $c->name = $k;
            $c->save();
            if (count($v)) {
                foreach ($v as $vv) {
                    $sc = new Subcategory();
                    $sc->name = $vv;
                    $c->subcategories()->save($sc);
                }
            }
        }
    }
}
