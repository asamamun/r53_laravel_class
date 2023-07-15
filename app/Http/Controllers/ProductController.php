<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Image;
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
        $cat = Category::with("subcategories")->withCount('products')->has('products')->get();
        // dd($cat);
        $products = Product::with(['category','images','comments.user'])->withTrashed()->orderByDesc('created_at')->paginate(20);
        if(true)$products->loadMissing("subcategory");
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
        $cats = Category::pluck('name', 'id');
        return view("products.create")->with("categories", $cats);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        $product = Product::create($request->all()['Product']);
        if($product){
           //
        //    dd($request);
           if ($request->hasFile('images')) {
            $files = $request->file('images');
            
            foreach ($files as $file) {
                // Save or process each file as needed
                $loc = $file->store('uploads');
                $i = new Image();
                $i->name = $loc;
                $product->images()->save($i);
            }
            return redirect()->route("product.create")->with("success","Product saved successfully. ID is ".$product->id );
        } 
        else{
            echo "image not available";
        }
           // 
        }
        else{
            echo "add failed";
        }
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
