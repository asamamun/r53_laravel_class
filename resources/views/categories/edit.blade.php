@extends('layouts.test')
@section('content')
<h1>Create Category</h1>
<a href="{{route("category.index")}}">Category Home</a>
<a href="{{url("category")}}">Category Home</a>
<form action="{{route('category.update',$cat->id)}}" method="post">
    @csrf
@method('put')
    @include('categories.form',['cat'=>$cat])
    <input type="submit" value="Update Category">
</form>
    
@endsection