@extends('layouts.test')
@section('css')
    
@endsection

@section('content')
    <h1>welcome to about</h1>
    <a href="{{route('category.index')}}">Category Index</a> | 
    <a href="{{url('category/create')}}">Create Category</a> | 
    <a href="{{route('category.create')}}">Create Category</a> | 
    <a href="{{route('category.show',1)}}">Category 1</a> | 
    <a href="{{url('category/'.'1')}}">Category 1</a> | 
    <br>
    <a href="{{URL::route('invitations', ['invitation' => 12345, 'answer' => 'yes']);}}">invitation</a>
<br>
       <a href="{{URL::signedRoute('invitations', ['invitation' => 12345, 'answer' => 'yes'])}}"> singed route</a> | 
       <a href="{{URL::temporarySignedRoute(
        'invitations',
        now()->addSeconds(20),
        ['invitation' => 12346, 'answer' => 'yes']
        )}}">20 sec singed route</a> 

    
@endsection
@section('script')
    <script>
        console.log("js working")
    </script>
@endsection