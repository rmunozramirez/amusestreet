<!DOCTYPE html>
<html lang="en">
    <!-- Head  -->
    @include('partials._head')   

    <body>
		<section id="landing-page">		
            <!-- Navigation Section -->
            @include('partials._navigation')	
	  
		</section>	
      	

            <!-- Content Section -->
			<!-- Featured home section -->
			@include('partials._pages-content')

        <!-- Bottom section -->
        @include('partials._content-footer')

    <!-- Footer -->
    @include('partials._footer')

    <!-- Insert javascript files  -->
    @include('partials._javascripts')
    </body>
</html> 