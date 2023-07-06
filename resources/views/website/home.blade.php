@extends('layouts.test')
@section('css')
    
@endsection

@section('content')
    <h1>welcome to home</h1>
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
@endsection