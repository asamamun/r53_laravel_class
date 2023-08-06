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
    <h1>Latest Products</h1>
    <div class="row">
        @forelse ($products as $p)        
        <div class="col-3 card border-success">
            <div class="card-header bg-transparent border-success">{{$p->category->name}}</div>
            <div class="card-body text-success">
              <h5 class="card-title">{{$p->name}}</h5>
              <p class="card-text">
                @if (count($p->images))
                <img src="{{asset("storage/".$p->OneImage->name)}}" alt="{{$p->name}}" class="img-fluid"> 
                @endif                
                
              </p>
            </div>
            <div class="card-footer bg-transparent border-success">Footer</div>
          </div> 
        @empty
            
        @endforelse
 

    </div>



@component('partials.modal')
@slot('title')
Password validation failure
@endslot
<p>The password you have provided is not valid.
    Here are the rules for valid passwords: [...]</p>
    <p><a href="#">...</a></p>
@endcomponent
@endsection