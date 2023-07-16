<div class="form-group field-product-category_id required has-error">
    <label class="control-label" for="product-category_id">Category ID</label>
    {!! Form::select('category_id',$categories,null,['placeholder' => 'Select...','id'=>"category_id",'class'=>'form-select'] ) !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-subcategory_id required">
    <label class="control-label" for="product-subcategory_id">Subcategory ID</label>
    {{-- <select class="form-select" name="Product[subcategory_id]" id="subcategory_id"></select> --}}
    {!! Form::select('subcategory_id',$subcategories,null,['id'=>"subcategory_id",'class'=>'form-select'] ) !!}
    
    
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-name required">
    <label class="control-label" for="product-name">Name</label>
    {{-- <input type="text" id="product-name" class="form-control" name="Product[name]" maxlength="255" aria-required="true"> --}}
    {!! Form::text('name',null,['class'=>'form-control','maxlength'=>'255']) !!}
    
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-sku required">
    <label class="control-label" for="product-sku">Sku</label>
    {{-- <input type="text" id="product-sku" class="form-control" name="Product[sku]" maxlength="255" aria-required="true"> --}}
    {!! Form::text('sku',null,['class'=>'form-control','maxlength'=>'255']) !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-details required">
    <label class="control-label" for="product-details">Details</label>
    {{-- <input type="text" id="product-details" class="form-control" name="Product[details]" maxlength="255" aria-required="true"> --}}
    {!! Form::textarea('details',null,['class'=>'form-control']) !!}
    
    <div class="help-block"></div>
    </div>
    <div class="form-group">
        <div class="form-label">Images</div>
        <input type="file" name="images[]" id="images" class="form-control" required multiple>
        <hr>
        @if ($product?->images)
            @forelse ($product?->images as $img)
               <div class="d-inline-block position-relative">
                <img src="{{asset('storage/'.$img->name)}}" width="100px" alt="" loading="lazy"> 
                <span data-id="{{$img->id}}"  class="pimage position-absolute left-100 top-0 translate-middle badge rounded-pill bg-danger">&times;</span>  
            </div> 
            @empty
                
            @endforelse
        @endif
    </div>
        <div class="form-group field-product-price required">
    <label class="control-label" for="product-price">Price</label>
    {{-- <input type="text" id="product-price" class="form-control" name="Product[price]" aria-required="true"> --}}
    {!! Form::text('price',null,['class'=>'form-control']) !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-quantity required">
    <label class="control-label" for="product-quantity">Quantity</label>
    {{-- <input type="text" id="product-quantity" class="form-control" name="Product[quantity]" aria-required="true"> --}}
    {!! Form::number('quantity',null,['class'=>'form-control']) !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-status">
    <label class="control-label" for="product-status">Status</label>
    {{-- <input type="text" id="product-status" class="form-control" name="Product[status]" value="1"> --}}
    {!! Form::select('status',['1'=>"Active",'0'=>"Inactive"],null,['class'=>'form-select'] ) !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-hot">
    <label class="control-label" for="product-hot">Hot</label>
    {{-- <input type="text" id="product-hot" class="form-control" name="Product[hot]" value="0"> --}}
    {!! Form::select('hot',['1'=>"Hot",'0'=>"Normal"],null,['class'=>'form-select'] ) !!}
    
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-new">
    <label class="control-label" for="product-new">New</label>
    {{-- <input type="text" id="product-new" class="form-control" name="Product[new]" value="1"> --}}
    {!! Form::select('new',['1'=>"New",'0'=>"Normal"],null,['class'=>'form-select'] ) !!}
    
    <div class="help-block"></div>
    </div>