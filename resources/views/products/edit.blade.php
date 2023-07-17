@extends('layouts.test')

@section('css')
<style>
    .pimage:hover{ cursor: pointer;}
</style>
    
@endsection

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
        $t = $(this);
            // alert($(this).data('id'));
            $.ajax({
                type: "post",
                url: "{{url('del_img')}}",
                data: {id:$t.data('id')},
                dataType: "json",
                success: function (response) {
                    if(response.type="info"){
                        Swal.fire(
  'Message!',
  response.message,
  response.type
).then(function(){
location.reload();
})  
                    }
                    else{
                        Swal.fire(
  'Message!',
  response.message,
  response.type
)  
                    }
                    //console.log(response);
                    // return;
   
                }
            });

        })
       //
    });
</script>
    
@endsection

