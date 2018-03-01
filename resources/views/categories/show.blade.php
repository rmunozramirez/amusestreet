@extends('layouts.app')
<?php $titleTag = htmlspecialchars($category->title); ?>
@section('title', "| $titleTag")

@section('content')
<section id="content">

	<div  id="contenido" class="container general-container">
		<header class="content-header">
			<div class="row">
				<div class="col-md-8">
					<h1 class="page-title">{{ $category->title }}</h1>
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
				<!-- {!! Html::linkRoute('categories.index', 'Categories') !!} / -->
				{{ $category->title }}
			</div>	
		</header>
	</div>
    <div class="container content-body left-right-shadow">	
				@include('partials._message')
		<div class="row">
			

			<div class="col-md-12">
				<div class="main-tabs">	
					<ul class="nav nav-tabs nav-justified">
						<li role="presentation" class="active tab-responsive">
							<a href="#resume" aria-controls="resume" role="tab" data-toggle="tab">Resume
							</a>
						</li>
						<li role="presentation" class="tab-responsive">
							<a href="#subcategories" aria-controls="subcategories" role="tab" data-toggle="tab">Subcategories
							</a>
						</li>
					</ul>
				</div>
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="resume">
						<div class="content">
							<div class="col-md-6">		
								<img class = "big_img img-responsive" src = "{{ asset('images/' . $category->image_url)}}" alt="{{ $category->title }}">
							</div>
							<div class="col-md-6">
								<header>Subtitle:</header>
								<h4>{{ $category->subtitle }}</h4>
								
								<dt>Since:</dt><dd> {{ date('M j, Y', strtotime($category->created_at)) }}</dd>										
									<dt>Status:</dt><dd>{{ $category->status}}</dd>
								<p>{!! $category->about_category !!}</p>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="subcategories">
						<div class="content">
							<h2>Subcategories:</h2>
							
							<h4 class="separator">There are {{$category->subcategories->count()}} Subcategories in {{ $category->title }}</h4>
								@if ($category->subcategories->count() > 0)
									
									  @foreach($category->subcategories as $subcategory)

										<div class="event-box separator">
											<div class="card hovercard">
												<div class="cardheader" style="background-image: url('{{asset('images/' . $subcategory->image_url)}}')">
													<h3><a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a></h3>
												</div>
												<div class="info">
													<h5 class="subcat">
														@if ($channels->count() > 0)
															@if ($channels->count() > 1)
																{{ $channels->count() }} channels 
															@else 	
															
															1 channel 
															@endif
														@else 
															No channel
															
														@endif
														 in<br>
																  <a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a>
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
									
								@endif
						</div>
					</div>
				</div>				
				
				</div>
			</div>									
					<div class="row">
						<div class="col-md-6">
							{!! Html::linkRoute('channels.edit', 'Edit', array($category->slug), array('class' => 'button btn-bock btn-success')) !!}
						</div>
						<div class="col-md-6">
							{!! Form::open(['route' => ['channels.destroy', $category->id], 'method' => 'DELETE']) !!}

							{!! Form::submit('Delete', ['class' => 'button btn-danger btn-block']) !!}

							{!! Form::close() !!} 
						</div>
					</div>					
					

		

		
		<h4 class="pull-right">Back to {!! Html::linkRoute('categories.index', 'Categories') !!}</h4>
	</div>
                
</section>
@endsection