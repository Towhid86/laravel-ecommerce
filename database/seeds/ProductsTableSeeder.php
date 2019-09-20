<?php

use App\Models\Product;
use Illuminate\Database\Seeder;
use Faker\Generator as Faker ;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = new Faker();
        factory(Product::class, 20)->create();

        $products = Product::select('id')->get() ;


        foreach ($products as $product){
            $product->addMediaFromUrl('https://lorempixel.com/640/480/?75974')->toMediaCollection('products');

        }
    }
}
