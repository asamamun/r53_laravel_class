@extends('layouts.test')

@section('content')
<h1>Product Edit Form</h1>
<div class="product-form">

    {{-- <form action="{{route("product.store")}}" method="post" enctype="multipart/form-data">
@csrf --}}
{!! Form::model($product,['route' => ['product.update',$product->id],'files' => true]) !!}
@method("put")
@include('products.form')    
    <div class="form-group">
    <button type="submit" class="btn btn-success">Update</button>    
    </div>
{!! Form::close() !!}
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

       //
       $(".pimage").click(function(){
            alert($(this).data('id'));
        })
       //
    });
</script>
    
@endsection

