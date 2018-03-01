@extends('layouts.app')
@section ('title', '| All channels')
@section('content')
<section id="content">
	<div  id="contenido" class="container general-container">
			<header class="content-header">
				<div class="row">
					<div class="col-md-8">
						<h1 class="page-title">Channels (Total: <?php echo (count($channels));?>)</h1>
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
					{!! Html::linkRoute('subcategories.index', 'Subcategories') !!} / 
					{!! Html::linkRoute('channels.index', 'Channels') !!}
				</div>	
			</header>
	</div>

    <div class="container content-body left-right-shadow">	
		<div class="row">
			<div class="col-md-12">
				
				    @foreach ($channels as $channel)
				<div class="event-box separator">	
					<div class="card hovercard">
						<div class="cardheader" style="background-image: url('{{asset('images/' . $channel->image_url)}}')">
							<h3><a href="{{ url('channels/'.$channel->slug) }}">{{ $channel->title }}</a></h3>
						</div>
						<div class="info">					
							<h5 class="subcat">	In:				
								@if ($channel->subcategories->count() > 0)

									  @foreach($channel->subcategories as $subcategory)

										<a href="{{ url('subcategories/'.$subcategory->slug) }}">{{ $subcategory->title }}</a><br>
										
									  @endforeach

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
			</div>

		</div>	
		    <div class="text-center">
        {{ $channels->links() }}
    </div>		
	</div>

</section>
@endsection


