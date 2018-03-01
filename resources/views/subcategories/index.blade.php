@extends('layouts.app')
@section ('title', '| All subcategories')
@section('content')
<section id="content">
	<div  id="contenido" class="container general-container">
			<header class="content-header">
				<div class="row">
					<div class="col-md-8">
						<h1 class="page-title">Subcategories (<?php echo (count($subcategories));?>)</h1>
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
					{!! Html::linkRoute('home.index', 'Home') !!} /
					{!! Html::linkRoute('categories.index', 'Categories') !!} /
					Subcategories
				</div>
			</header>
	</div>

    <div class="container content-body left-right-shadow">
		<div class="row">
			<div class="col-md-12">
			<h4 class="separator">There are <?php echo (count($subcategories));?> Subcategories</h4>

				    @foreach ($subcategories as $subcategory)
				<div class="event-box separator">
					<div class="card hovercard">
						<div class="cardheader" style="background-image: url('{{asset('images/' . $subcategory->image_url)}}')">
							<h3><a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a></h3>
						</div>
						<div class="info">
							<h5 class="subcat">				
								@if ($subcategory->channels->count() > 0)
									@if ($subcategory->channels->count() > 1)
										{{ $subcategory->channels->count() }} channels in<br>
										<a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a>
									@else 	
									
									1 channel in<br>
										<a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a>
									@endif
								@else 
									No channel in<br>
										  <a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a>
									
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
							<a href="{{ url('subcategories/'.$subcategory->slug) }}">View</a>

							| {!! Html::linkRoute('subcategories.edit', 'Edit', array($subcategory->slug)) !!} | <a href="event.php">Delete</a>
						</div>
					</div>

				</div>
				@endforeach
			</div>

		</div>
		    <div class="text-center">
        {{ $subcategories->links() }}
    </div>
	</div>

</section>
@endsection


