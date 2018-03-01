@extends('layouts.app')
@section ('title', '| All Categories')
@section('content')
<section id="content">
	<div  id="contenido" class="container general-container">
			<header class="content-header">
				<div class="row">
					<div class="col-md-8">
						<h1 class="page-title">Categories (<?php echo (count($categories));?>)</h1>
					</div>
					<div class="col-md-4">
						<div class="the-search">					
							<form action="#">					
								<div class="right input">
									<input type="text" placeholder="Search">
									<button class="button search-user-area" type="submit">Go</button>
								</div>					
							</form>
						</div>
					</div>
				</div>
				<div class="breadcrumb">
					{!! Html::linkRoute('home.index', 'Home') !!} / Categories
				</div>	
			</header>
	</div>

    <div class="container content-body left-right-shadow">	
		<div class="row">
			<div class="col-md-12">
			<h4 class="separator">There are <?php echo (count($categories));?> Categories</h4>
				
				    @foreach ($categories as $category)
				<div class="event-box separator">	
					<div class="card hovercard">
						<div class="cardheader" style="background-image: url('{{asset('images/' . $category->image_url)}}')">
							<h3><a href="{{ url('categories/'.$category->slug) }}">{{ $category->title }}</a></h3>
						</div>
						<div class="info">					
							<h5 class="subcat">					
								@if ($category->subcategories->count() > 0)

								{{ $category->subcategories->count() }} subcategories in<br>
								<a href="{{ url('categories/'.$category->slug) }}">{{ $category->title }}</a>

								@endif				
							</h5>					   
							<p>
								Event Rating:<br />
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star-o"></i>
								(14)
							</p>	
							<hr>
							<a href="{{ url('categories/'.$category->slug) }}">View</a>

							| {!! Html::linkRoute('categories.edit', 'Edit', array($category->slug)) !!} | <a href="event.php">Delete</a>
						</div>
					</div>
					
				</div>	
				@endforeach
			</div>

		</div>			
	</div>

</section>
@endsection


