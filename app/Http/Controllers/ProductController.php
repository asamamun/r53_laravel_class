<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Image;
use App\Models\Subcategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as ImageI;

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
        //file:///D:/xampp8110/htdocs/Round53/laravel/r53_laravel_class/storage/app/public/logo.png
        //
        // echo storage_path("app/public").'/logo.png';
        // exit;
        $cats = Category::pluck('name', 'id');
        return view("products.create")
        ->with("product", null)
        ->with("categories", $cats)
        ->with("subcategories", []);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        $product = Product::create($request->all());
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
                //echo Storage::path($loc) . "<br>";
                //resize the images and store with same name. max resolution can be 1024px
                //watermark
                    //image intervention
                    $image = ImageI::make(Storage::path($loc))->resize(800, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })->insert(storage_path("app/public").'/logo.png','center')->save(Storage::path($loc));
                    //watermark end
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

        // $p = Product::with(["images","category","subcategory"])->find($product->id);
        // dd($p);
        // dd($product);
        $product->loadMissing(["images","category","subcategory"]);
        // dd($product);
        return view("products.show",compact("product"));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        
        $cats = Category::pluck('name', 'id');
        $subcats = Subcategory::where('category_id',$product->category_id)->pluck('name', 'id');
        $product = $product->loadMissing("category");
        // $product = $product;
        // dd($product);
        return view("products.edit", ["product" => $product,'categories'=>$cats,'subcategories'=>$subcats]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //dd($product);
        $product->category_id = $request->category_id;
        $product->subcategory_id = $request->subcategory_id;
        $product->name = $request->name;
        $product->sku = $request->sku;
        $product->details = $request->details;
        $product->price = $request->price;
        $product->quantity = $request->quantity;
        $product->status = $request->status;
        $product->hot = $request->hot;
        $product->new = $request->new;
        $product->save();
        // file upload
        if ($request->hasFile('images')) {
            $files = $request->file('images');
            
            foreach ($files as $file) {
                // Save or process each file as needed
                $loc = $file->store('uploads');
                $i = new Image();
                $i->name = $loc;
                $product->images()->save($i);
            }
            return redirect()->route("product.index")->with("success","Product update successfully. ID is ".$product->id );
        } 
        else{
            echo "image not available";
        } 
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

    public function delete_img(Request $request){
       // return response()->json($request->all());
       $img = Image::find($request->id);
       if($img){
        //physically delete the file
        Storage::delete($img->name);
        //delete the file from images table
        $img->delete();
        return response()->json(['type'=>"info","message"=>"Successfully deleted"]);
       }
       else{
        return response()->json(['type'=>"warning","message"=>"Error Deleting Images"]);
       }
    }
    public function testsegment(Request $request){
        dd($request->segments());
    }
}
