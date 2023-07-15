@extends('layouts.test')

@section('content')
<h1>Product Add Form</h1>
<div class="product-form">

    <form action="{{route("product.store")}}" method="post" enctype="multipart/form-data">
@csrf
    <div class="form-group field-product-category_id required has-error">
<label class="control-label" for="product-category_id">Category ID</label>
<select class="form-select" name="Product[category_id]" id="category_id">
    <option value="-1">Select</option>
    @forelse ($categories as $k=>$v)
        <option value="{{$k}}">{{$v}}</option>
    @empty
        
    @endforelse
</select>

<div class="help-block"></div>
</div>
    <div class="form-group field-product-subcategory_id required">
<label class="control-label" for="product-subcategory_id">Subcategory ID</label>
<select class="form-select" name="Product[subcategory_id]" id="subcategory_id"></select>

<div class="help-block"></div>
</div>
    <div class="form-group field-product-name required">
<label class="control-label" for="product-name">Name</label>
<input type="text" id="product-name" class="form-control" name="Product[name]" maxlength="255" aria-required="true">

<div class="help-block"></div>
</div>
    <div class="form-group field-product-sku required">
<label class="control-label" for="product-sku">Sku</label>
<input type="text" id="product-sku" class="form-control" name="Product[sku]" maxlength="255" aria-required="true">

<div class="help-block"></div>
</div>
    <div class="form-group field-product-details required">
<label class="control-label" for="product-details">Details</label>
<input type="text" id="product-details" class="form-control" name="Product[details]" maxlength="255" aria-required="true">

<div class="help-block"></div>
</div>
<div class="form-group">
    <div class="form-label">Images</div>
    <input type="file" name="images[]" id="images" class="form-control" required multiple>
</div>
    <div class="form-group field-product-price required">
<label class="control-label" for="product-price">Price</label>
<input type="text" id="product-price" class="form-control" name="Product[price]" aria-required="true">

<div class="help-block"></div>
</div>
    <div class="form-group field-product-quantity required">
<label class="control-label" for="product-quantity">Quantity</label>
<input type="text" id="product-quantity" class="form-control" name="Product[quantity]" aria-required="true">

<div class="help-block"></div>
</div>
    <div class="form-group field-product-status">
<label class="control-label" for="product-status">Status</label>
<input type="text" id="product-status" class="form-control" name="Product[status]" value="1">

<div class="help-block"></div>
</div>
    <div class="form-group field-product-hot">
<label class="control-label" for="product-hot">Hot</label>
<input type="text" id="product-hot" class="form-control" name="Product[hot]" value="0">

<div class="help-block"></div>
</div>
    <div class="form-group field-product-new">
<label class="control-label" for="product-new">New</label>
<input type="text" id="product-new" class="form-control" name="Product[new]" value="1">

<div class="help-block"></div>
</div>
    
    <div class="form-group">
        <button type="submit" class="btn btn-success">Save</button>    </div>

    </form>
</div>
    
@endsection


@section('script')
<script>
    function decorate_subcat(d){
        console.log(d);
    $h = "<option value='-1'>Select</option>";
        for (const k in d) {
           $h += "<option value='"+k+"'>"+d[k]+"</option>"; 
        }
        $("#subcategory_id").html($h);
    }

    $(document).ready(function () {
       $("#category_id").change(function () {
        let id = $(this).val();
        
        if(id == "-1"){  return;}
        let url = "{{url("getsubcat")}}/"+id;
        // alert(url);
        // alert(id);
        $.get(url,{},function(d){
            
            decorate_subcat(d);
        });


       })
    });
</script>
    
@endsection