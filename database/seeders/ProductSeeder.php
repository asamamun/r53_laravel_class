<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Generator;
use Illuminate\Container\Container;


class ProductSeeder extends Seeder
{
   /**
     * The current Faker instance.
     *
     * @var \Faker\Generator
     */
    protected $faker;

    /**
     * Create a new seeder instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->faker = $this->withFaker();
    }

    /**
     * Get a new Faker instance.
     *
     * @return \Faker\Generator
     */
    protected function withFaker()
    {
        return Container::getInstance()->make(Generator::class);
    }
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
/*         for ($i=0; $i <50 ; $i++) { 
            DB::table('products')->insert([
                'category_id'=>"1",
                'subcategory_id'=>rand(1,2),
                'name' => $this->faker->word(10),
                'sku' => date('Ys').$this->faker->unique()->word,
                'details' => $this->faker->text,
                'price' => $this->faker->randomDigit,
                'quantity' => $this->faker->randomDigit,
            ]);
        } */
        Product::factory()->count(100)->create();
    
        
    }
}
