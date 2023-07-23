<div style="float: left">        
    <a href="{{url("/")}}">Home</a> | 
    <a href="{{url("about")}}">About</a> | 
    <a href="{{url("products")}}">Products</a> | 
    <a href="{{route("product.index")}}">Product</a> | 
    <a href="{{url("services")}}">Services</a> |
    <a href="{{url("testblade")}}">Blade</a> |
</div>
<div style="float: right">
    @auth
    <label for="">Welcome {{Auth::user()->name}}</label>
    <!-- Authentication -->
    <form class="d-inline" method="POST" action="{{ route('logout') }}">
        @csrf
    
        <x-responsive-nav-link :href="route('logout')"
                onclick="event.preventDefault();
                            this.closest('form').submit();">
            {{ __('Log Out') }}
        </x-responsive-nav-link>
    </form>      
    <form class="d-inline" method="POST" action="{{ url('/tokens/create') }}">
        @csrf
    
        <x-responsive-nav-link :href="route('logout')"
                onclick="event.preventDefault();
                            this.closest('form').submit();">
            {{ __('Tokens') }}
        </x-responsive-nav-link>
    </form>      
    @endauth
    @guest
    <a href="{{route("login")}}">Login</a>
    <a href="{{route("register")}}">Register</a>  
    @endguest



 



</div>
<div style="clear: both"></div>