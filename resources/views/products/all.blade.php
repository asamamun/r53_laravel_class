@extends('layouts.test')

@section('content')
<h1>categories</h1>
<div class="row">
@forelse ($categories as $c)
<div class="card col-4 my-3">
    <div class="card-header">
      {{$c->name}}
    </div>
    <ul class="list-group list-group-flush">
    @forelse ($c->subcategories as $sc)
    <li class="list-group-item">{{$sc->name}}</li>  
    @empty
    <li class="list-group-item bg-danger">NO SC FOUND!!</li>
    @endforelse
</ul>    
  </div>

@empty
    
@endforelse
</div>
<ol>
@forelse ($products as $p)
    <li class="{{$p->deleted_at?"bg-warning":""}}""> 
        <button>Category: {{$p->category->name}}</button>
        <button>SubCategory: {{$p->subcategory->name}}</button> <br>
        id: {{$p->id}}, Name: {{$p->name}},Sku :{{$p->sku}} , Price: {{$p->price}}, Vat: {{$p->vat}}
    {{-- DELETE --}}
    <form onsubmit="return confirm('Are you sure?')" action="{{route('product.destroy',$p->id)}}" method="post">
        @csrf
        @method('delete')
        <input type="submit" class="btn btn-danger" name="delete" value="Delete">
        </form>
    {{-- DELETE END --}}
    @if ($p->deleted_at)
       {{-- restore --}}
    <form onsubmit="return confirm('Are you sure?')" action="{{route('product.restore',$p->id)}}" method="post">
        @csrf        
        <input type="submit" class="btn btn-success" name="delete" value="Restore">
        </form>
    {{-- restore END --}} 
       {{-- restore --}}
    <form onsubmit="return confirm('Are you sure?')" action="{{route('product.restore',$p->id)}}" method="post">
        @csrf        
        <input type="submit" class="btn btn-danger" name="delete" value="Permanent delete">
        </form>
    {{-- restore END --}} 
    @endif
    <hr>
    <h1>Images</h1>
    @forelse ($p->images as $image)
       <img src="{{$image->name}}" width="100px" alt=""> 
    @empty
    <div class="alert alert-warning" role="alert">
        No Image Available
      </div>
    @endforelse
    <hr>
    <h3>User Comments</h3>
    @forelse ($p->comments as $comment)
        <h6>{{$comment->user->name}} commented: {{$comment->message}}</h6>
    @empty
        <h6>No comments available</h6>
    @endforelse
    </li>
    @empty
    <li>No Product available</li> 
@endforelse
</ol>
{{$products->links()}}
@endsection
