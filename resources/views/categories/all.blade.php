@extends('layouts.test')
@section('content')
<div class="d-flex justify-content-between">
    <h3>Create Category</h3>
    <a  href="{{route('category.create')}}" class="btn btn-outline-primary"> + </a>
</div>

<table class="table table-bordered table-striped">
    <tr><th>ID</th> <th>name</th> <th>created_at</th> <th>action</th></tr>
    @forelse ($cats as $cat)
        <tr>
            <td>{{$cat->id}}</td>
            <td>{{$cat->name}}</td>
            <td>{{$cat->created_at}}</td>
            <td> <a href="{{route('category.edit',$cat->id)}}">EDIT</a> | DELETE</td>
        </tr>
    @empty
        
    @endforelse
</table>
<hr>
{{$cats->links()}}
    
@endsection