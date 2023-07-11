<div style="float: left">        
    <a href="{{url("/")}}">Home</a> | 
    <a href="{{url("about")}}">About</a> | 
    <a href="{{url("products")}}">Products</a> | 
    <a href="{{url("product")}}">Product</a> | 
    <a href="{{url("services")}}">Services</a> |
    <a href="{{url("testblade")}}">Blade</a> |
</div>
<div style="float: right">
@if (Auth::check())
<!-- Authentication -->
<form method="POST" action="{{ route('logout') }}">
    @csrf

    <x-responsive-nav-link :href="route('logout')"
            onclick="event.preventDefault();
                        this.closest('form').submit();">
        {{ __('Log Out') }}
    </x-responsive-nav-link>
</form>
@else
<a href="{{route("login")}}">Login</a>
<a href="{{route("register")}}">Register</a>  
@endif


</div>
<div style="clear: both"></div>