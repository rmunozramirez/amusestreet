<!DOCTYPE html>
<html lang="en">
    
    <!-- Head  -->
    @include('partials._head')   

<body>
        <!-- Upper section -->
        @include('partials._uppersection')
        
            <!-- Navigation Section -->
            @include('partials._navigation')

            <!-- Content Section -->

            @yield('content')

        <!-- Bottom section -->
        @include('partials._bottomsection')

    <!-- Footer -->
    @include('partials._footer')

    <!-- Insert javascript files  -->
    @include('partials._javascripts')
    <!-- Scripts -->
    <script src="/js/app.js"></script>
</body>
</html>
