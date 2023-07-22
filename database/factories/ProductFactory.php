<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Generator as faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $faker = $this->withFaker();
        return [
            'category_id'=>rand(1,7),
            'subcategory_id'=>rand(1,25),
            'name' => $faker->word(10),
            'sku' => date('Ys').$this->faker->unique()->word,
            'details' => $faker->text,
            'price' => $faker->randomDigit * 10,
            'quantity' => $faker->randomDigit,
        ];
    }
}
