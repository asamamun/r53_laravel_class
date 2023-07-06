@extends('layouts.test')
@section('content')
<h1>Create Category</h1>
<form action="{{route('category.store')}}" method="post">
    @csrf
    @include('categories.form')
    <input type="submit" value="Add Category">
</form>
    
@endsection