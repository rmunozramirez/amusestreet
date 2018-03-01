<!DOCTYPE html>
<html lang="en">
    <!-- Head  -->
    @include('partials._head')   

    <body>
		<section id="landing-page">		
            <!-- Navigation Section -->
            @include('partials._navigation')	
	
			<!-- Upper section -->
			@include('partials._uppersection')	
			
			<!-- Featured home section -->
			@include('partials._featured')
        
		</section>		

            <!-- Content Section -->
			<!-- Featured home section -->
			@include('home.index')

        <!-- Bottom section -->
        @include('partials._widget_section')

    <!-- Footer -->
    @include('partials._footer')

    <!-- Insert javascript files  -->
    @include('partials._javascripts')
    </body>
</html> 