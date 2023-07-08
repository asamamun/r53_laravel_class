@extends('layouts.test')
@section('content')
<hr>
@datetime
@csrf
@ifGuest ()
   <h1>you are guest</h1>
@else
    <h1>you are not guest</h1>
@endif
<hr>
<div class="row">
@forelse ($products as $product)
@component('partials.card')
@slot('url')
    {{$product['image']}}
@endslot
<div class="card-body">
  <h5 class="card-title">{{$product['name']}}</h5>
  <p class="card-text">{{$product['description']}}</p>
</div>
<ul class="list-group list-group-flush">
@forelse ($product['sizes'] as $size)
<li class="list-group-item">{{$size}}</li>
@empty
   
@endforelse
</ul>
<div class="card-body">
  <a href="#" class="card-link">Card link</a>
  <a href="#" class="card-link">Another link</a>
</div>
@endcomponent

  
@empty
    <h1>No products available</h1>
@endforelse
</div>
    
@endsection