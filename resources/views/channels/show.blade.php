@extends('layouts.app')
<?php $titleTag = htmlspecialchars($channel->title); ?>
@section('title', "| $titleTag")

@section('content')
<section id="content">

	<div  id="contenido" class="container general-container">
		<header class="content-header">
			<div class="row">
				<div class="col-md-10">
					<h1 class="page-title">{{ $channel->title }}</h1>
					<div class="breadcrumb">
						{!! Html::linkRoute('home.index', 'Home') !!} / 
						<a href="{{ url('categories/'.$category->slug) }}">{{ $category->title }}</a> /
						{!! Html::linkRoute('subcategories.index', 'Subcategories') !!} / 
						{{ $channel->title }}
					</div>	
				</div>
					<div class="col-md-2">
						<div class="play_header pull-right">
						<i class="fa fa-play-circle-o fa-4" aria-hidden="true"></i></a>
						</div>
					</div>
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
							<a href="#datos" aria-controls="datos" role="tab" data-toggle="tab">Datos
							</a>
						</li>
					</ul>
				</div>
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="resume">
						<div class="content">
							<div class="col-md-6">		
								<img class = "big_img img-responsive" src = "{{ asset('images/' . $channel->image_url)}}" alt="{{ $channel->title }}">
							</div>
							<div class="col-md-6">
								<header>Subtitle:</header>
								<h4>{{ $channel->subtitle }}</h4>
								<header>Subcategories:</header>
								@if ($subcategories->count() > 0)

									  @foreach($subcategories as $subcategory)

										<h4>{{ $subcategory->title }} </h4>

									  @endforeach

								@endif
							<dl class="dl-horizontal">         
								<dt>Since:</dt><dd> {{ date('M j, Y', strtotime($channel->created_at)) }}</dd>										
								<dt>Subtitle:</dt><dd>{!! $channel->subtitle !!}</dd>
								<dt>Status:</dt><dd>{{ $channel->status}}</dd>
								<dt>Video URL:</dt><dd>{!! $channel->video_url !!}</dd>
								<dt>Web:</dt><dd>{!! $channel->web !!}</dd>
								<dt class="small">Facebook:</dt><dd> {{ $channel->facebook}}</dd>
								<dt class="small">Google +:</dt><dd> {{ $channel->googleplus}}</dd>
								<dt class="small">Twitter:</dt><dd> {{ $channel->twitter}}</dd>
								<dt class="small">Youtube:</dt><dd> {{ $channel->youtube}}</dd>
								<dt class="small">Linked In:</dt><dd> {{ $channel->linkedin}}</dd>
							</dl>								
							</div>
						</div>					
					</div>
					
					<div role="tabpanel" class="tab-pane" id="datos">
						<div class="content"> 
							<p>{!! $channel->about_channel !!}</p>
						</div>
					</div>

				</div>				
			</div>
		</div>									
					<div class="row">
						<div class="col-md-6">
							{!! Html::linkRoute('channels.edit', 'Edit', array($channel->slug), array('class' => 'button btn-bock btn-success')) !!}
						</div>
						<div class="col-md-6">
							{!! Form::open(['route' => ['channels.destroy', $channel->id], 'method' => 'DELETE']) !!}

							{!! Form::submit('Delete', ['class' => 'button btn-danger btn-block']) !!}

							{!! Form::close() !!} 
						</div>
					</div>					
					

		

		
		<h4 class="pull-right">Back to {!! Html::linkRoute('channels.index', 'Channels') !!}</h4>
	</div>
                
</section>
@endsection