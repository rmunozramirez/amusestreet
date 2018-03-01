<div id="contenido">
   <!-- Navigation -->
	<nav class="navbar " role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!-- a class="navbar-brand" href="#"><img class="img-responsive" alt="" src="images/logo-skapada.png"></a -->
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		
			<!-- mega menu -->
			<ul class="sky-mega-menu sky-mega-menu-anim-flip sky-mega-menu-response-to-icons blanco">

				<!-- portfolio -->
     
				<li class="active"><a href="/"><i class="fa fa-home"></i> Home</a></li> 
					
				<li aria-haspopup="true"><a href="{{ route('channels.index') }}"><i class="fa fa-play-circle"></i> Channels</a>        
					
					<div class="grid-container3">
						<ul>
							<li><a href="{{ route('channels.create') }}">Create channel</a></li>        
						</ul>
					</div>
				</li>
				<li aria-haspopup="true"><a href="{{ route('categories.index') }}"><i class="fa fa-briefcase"></i>Categories</a>
				
					<div class="grid-container3">
						<ul>
							<li>
							<a href="{{ route('subcategories.index') }}"><i class="fa fa-play-circle"></i> Subcategories</a>

								<div class="grid-container3">
									<ul>
										<li><a href="{{ route('channels.index') }}"><i class="fa fa-play-circle"></i> Channels</a></li>
									</ul>
								</div>
							</li>									

						</ul>
					</div>
				</li>
				<!--/ portfolio -->
							
				<li>
					<a href="blog.php"><i class="fa fa-edit"></i>Blog</a>
				</li>
				<!--/ blog -->
				
				<!-- share -->
				<li aria-haspopup="true" class="right">
					<a href="#"><i class="fa fa-bullhorn"></i>Share</a>
					<div class="grid-container3">
						<ul>
							<li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
							<li><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i>Google Plus</a></li>
						</ul>
					</div>
				</li>
				<!--/ share -->
				
				<!-- contacts -->
				<li aria-haspopup="true" class="right">
					<a href="#_"><i class="fa fa-user"></i>Login</a>
					<div class="grid-container6">
						<form action="#">
							
						<!-- ?php include "users/includes/user_login.php"; ? -->				
						</form>
					</div>
				</li>
				<!--/ contacts -->
			</ul>
			<!--/ mega menu -->
			
		</div>
			<!-- /.navbar-collapse -->
	</nav>
</div>