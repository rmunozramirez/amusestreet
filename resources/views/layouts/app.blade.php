<!DOCTYPE html>
<html lang="en">
    
    <!-- Head  -->
    @include('partials._head')   

<body>
	<section id="inner-page" class="header">		
            <!-- Navigation Section -->
            @include('partials._navigation')
						
	</section>	
            <!-- Content Section -->

            @yield('content')

        <!-- Bottom section -->
        @include('partials._content-footer')

    <!-- Footer -->
    @include('partials._footer')

    <!-- Insert javascript files  -->
    @include('partials._javascripts')
    <!-- Scripts -->
    <script src="/js/app.js"></script>
</body>
</html>
