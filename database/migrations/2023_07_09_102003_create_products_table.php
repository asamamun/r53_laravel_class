<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("category_id")->unsigned();
            $table->foreign('category_id')->references('id')->on('categories');
            $table->bigInteger("subcategory_id")->unsigned();
            $table->foreign('subcategory_id')->references('id')->on('subcategories');

            $table->string("name");
            $table->string("sku")->unique();
            $table->text("details");
            $table->float("price",10,2);
            $table->integer("quantity")->unsigned();
            $table->tinyInteger("status")->default("1");
            $table->tinyInteger("hot")->default("0");
            $table->tinyInteger("new")->default("1");

            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
