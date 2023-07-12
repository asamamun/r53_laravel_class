<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        /* $products = DB::table("products")
        ->where('price', '<', 2 )
        ->orWhere('price', '>', 70 )
        ->inRandomOrder()
        ->get(); */
        // $products = Product::paginate(20);
        $cat = Category::with("subcategories")->has('products')->get();
        // dd($cat);
        $products = Product::with(['category','subcategory','images','comments.user'])->withTrashed()->paginate(20);
        // $products = Product::with(['category','subcategory','images','comments.user'])->find(1);
        // $products = Product::onlyTrashed()->paginate(20);
        // dd($products);
        // dd($products->toJson());
        return view("products.all")
        ->with('products', $products)
        ->with('categories', $cat);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        Product::destroy($product->id);
        return redirect()->back()->with("warning","Deleted Product Successfully");
    }

    public function restore($id){
        $product = Product::onlyTrashed()->find($id);
       if($product->restore()){
        return redirect()->back()->with("success","Product Restored Successfully");
       }
    }
}
