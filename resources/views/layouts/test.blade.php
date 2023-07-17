<html>
    <head>
        <title>{{ $title ?? 'Todo Manager' }}</title>
        {{-- CSRF --}}
        <meta name="csrf-token" content="{{ csrf_token() }}">
        
        <link rel="stylesheet" href="{{ asset('staticassets/css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('build/assets/app-58b9f27f.css') }}">
        <link rel="stylesheet" href="{{ asset('build/assets/product-b8115708.css') }}">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        @yield('css')
    </head>
    <body>
    <div class="container">
    @include('layouts.nav')
    @includeWhen(Auth::check(), 'layouts.authonly', ['some' => 'data'])
    @include('partials.flash')
<div class="row">
    <div class="col-9">@yield('content')</div>
    <div class="col-3">
        @section('sidebar')
            <div>
                <input type="search" placeholder="Search" name="" id="">
            </div>
        @show
    </div>
</div>
        
    
    </div>
    <script src="{{ asset("build/assets/app-4a08c204.js") }}"></script>
    <script src="{{ asset("staticassets/js/bootstrap.bundle.min.js") }}"></script>
    <script src="{{ asset("staticassets/js/jquery-3.7.0.min.js") }}"></script>
    <script>
        $(document).ready(function () {
            $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });  
        });
        
    </script>
    @yield('script')
    </body>
</html>