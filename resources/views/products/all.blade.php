@extends('layouts.test')

@section('content')
<ol>
@forelse ($products as $p)
    <li>{{$p->name}}, price: {{$p->price}}</li>
    @empty
    <li>No Product available</li> 
@endforelse
</ol>
@endsection
