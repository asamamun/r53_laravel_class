<html>
    <head>
        <title>{{ $title ?? 'Todo Manager' }}</title>
        <link rel="stylesheet" href="{{ asset('build/assets/css/bootstrap.min.css') }}">
        @yield('css')
    </head>
    <body>
    <div class="container">
    @include('layouts.nav')
    @include('partials.flash')

        
    @yield('content')
    </div>
    <script src="{{ asset("build/assets/js/bootstrap.bundle.min.js") }}"></script>
    @yield('script')
    </body>
</html>