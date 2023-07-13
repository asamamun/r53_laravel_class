<html>
    <head>
        <title>{{ $title ?? 'Todo Manager' }}</title>
        {{-- CSRF --}}
        <meta name="csrf-token" content="<?php echo csrf_token(); ?>" id="token">
        
        <link rel="stylesheet" href="{{ asset('build/assets/bootstrap.min-b0d79a03.css') }}">
        <link rel="stylesheet" href="{{ asset('build/assets/app-58b9f27f.css') }}">
        <link rel="stylesheet" href="{{ asset('build/assets/product-b8115708.css') }}">

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
    <script src="{{ asset("build/assets/bootstrap.bundle.min-9f2301bd.js") }}"></script>
    @yield('script')
    </body>
</html>