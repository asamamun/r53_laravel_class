@extends('layouts.test')
@section('css')
 <style>
    #colorContainer li{
        display: inline-block;
        width: 100px;
        height: 100px;
        overflow: hidden;
        text-align: center;
        align-items: center;
    }
    </style>   
@endsection

@section('sidebar')
@parent
<h1>my home page sidebar</h1>
@endsection

@section('content')
    <h1>welcome to home</h1>
    @if (count($users))
        <h1>you have users</h1>
    @else
        <h1>you have no users</h1>
    @endif
    <hr>
    @unless (count($users))
        <h1>no users found</h1>
    @endunless
    @if (!count($users))
    <h1>you have no users</h1>
        
    @else
    <h1>you have users</h1>  
    @endif

    <h3>@{{ totalUsers }}</h3>
    {{$users->links()}}
    <ul>
    @foreach ($users as $user)
       <li> {{ $user->name}} ({{$user->email}})</li>
    @endforeach
    </ul>
    <hr>
    @forelse ($users as $user)
    <li>{{ $user->name }}</li>
    @empty
        <p>No users</p>
    @endforelse
{{$users->links()}}

<hr>
<div id="colorContainer">
    @forelse ($colors as $k=>$v)
    {{-- <li>{{$loop->count}}</li> --}}
    @if ($loop->first || $loop->last)
        <li style="background-color: {{$k}}" class="bg-info">{{$v}}</li>
    @else  
    {{-- <li style="background-color: {{$k}}" class="">{{$loop->index}}{{$loop->iteration}} of {{$loop->count}} : {{$k}} = {{$v}}</li>  --}}
    <li style="background-color: {{$k}}" class="">{{$v}}</li> 
    @endif
     
    @empty
        
    @endforelse
</div>

<hr>

@component('partials.modal')
@slot('title')
Password validation failure
@endslot
<p>The password you have provided is not valid.
    Here are the rules for valid passwords: [...]</p>
    <p><a href="#">...</a></p>
@endcomponent
@endsection