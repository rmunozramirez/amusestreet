@extends('layouts.app')
<?php $titleTag = htmlspecialchars($subcategory->title); ?>
@section('title', "| $titleTag")

@section('content')
<section id="content">
	<div  id="contenido" class="container general-container">
		<header class="content-header">
			<div class="row">
				<div class="col-md-8">
					<h1 class="page-title">{{ $subcategory->title }}</h1>
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
				<a href="{{ url('categories/'.$category->slug) }}">{{ $category->title }}</a> / 
				{{ $subcategory->title }}
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
							<a href="#channels" aria-controls="datos" role="tab" data-toggle="tab">Channels
							</a>
						</li>
					</ul>
				</div>
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="resume">
						<div class="content">
							<div class="col-md-6">		
								<img class = "big_img img-responsive" src = "{{ asset('images/' . $subcategory->image_url)}}" alt="{{ $subcategory->title }}">
							</div>
							<div class="col-md-6">
								<header>Subtitle:</header>
								<h4>{{ $subcategory->subtitle }}</h4>

								<dt>Since:</dt><dd> {{ date('M j, Y', strtotime($subcategory->created_at)) }}</dd>										
									<dt>Subtitle:</dt><dd>{!! $subcategory->subtitle !!}</dd>
									<dt>Status:</dt><dd>{{ $subcategory->status}}</dd>
								<p>{!! $subcategory->about_subcategory !!}</p>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="channels">
						<div class="content">
							<h4 class="separator">There are {{$channels->count()}} channels in {{ $subcategory->title }}</h4>
								@if ($channels->count() > 0)

									  @foreach($channels as $channel)

										<div class="event-box separator">	
											<div class="card hovercard">
												<div class="cardheader" style="background-image: url('{{asset('images/' . $channel->image_url)}}')">
													<h3><a href="{{ url('channels/'.$channel->slug) }}">{{ $channel->title }}</a></h3>
												</div>
												<div class="info">					
													<h5 class="subcat">			
														@if ($channels->count() > 0)
															@if ($channels->count() > 1)
																{{ $channels->count() }} channels in<br>
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
													<a href="{{ url('channels/'.$channel->slug) }}">View</a>

													| {!! Html::linkRoute('channels.edit', 'Edit', array($channel->slug)) !!} | <a href="event.php">Delete</a>
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
							{!! Html::linkRoute('channels.edit', 'Edit', array($subcategory->slug), array('class' => 'button btn-bock btn-success')) !!}
						</div>
						<div class="col-md-6">
							{!! Form::open(['route' => ['channels.destroy', $subcategory->id], 'method' => 'DELETE']) !!}

							{!! Form::submit('Delete', ['class' => 'button btn-danger btn-block']) !!}

							{!! Form::close() !!} 
						</div>
					</div>					
					

		

		
		<h4 class="pull-right">Back to {!! Html::linkRoute('subcategories.index', 'Subcategory') !!}</h4>
	</div>
                
</section>
@endsection