@extends('layouts.app')
@section ('title', '| Create new Channel')

@section('stylesheets')


<script type="text/javascript">
tinyMCE.init({
        mode : "textareas",
        theme : "advanced",
        plugins : "emotions,spellchecker,advhr,insertdatetime,preview", 
                
});
</script>

@endsection
@section('content')
<section id="content">
    <div class="container content-body left-right-shadow">	
		<div class="main-tabs">	
			<ul class="nav nav-tabs nav-justified">
				<li role="presentation" class="active  the-tab"><a href="/users/{id}"><i class="fa fa-user"></i> User</a></li>
  				<li role="presentation" class="the-tab"><a href="/channels"><i class="fa fa-play-circle"></i> Your Channels</a></li>

			</ul>
		</div>
		<h2>Create a Channel</h2>
			{!! Form::open(array('route' => 'channels.store', 'data-parsley-validate' => '', 'files' => true)) !!}
					
		<div class="row">
			<div class="col-md-8">
			
				{{Form::label('status', 'Activate (make the channel visible in front end):', array('class' => 'form-spacing-top'))}}	<br>			
				{{Form::radio('status', 'active', 'Active:', array('class' => ''))}} Activate <span class="form-spacing-right"></span>
				{{Form::radio('status', 'inactive', 'Inactive:', array('class' => 'form-spacing-top'))}} Deactivate
			</div>
		</div>
		<div class="row">		
			<div class="col-md-6">
				{{Form::label('title', 'Title:', array('class' => 'form-spacing-top'))}}
				{{Form::text('title', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255'))}}
				
				{{Form::label('subtitle', 'Subtitle:', array('class' => 'form-spacing-top'))}}
				{{Form::text('subtitle', null, array('class' => 'form-control', 'required' => '', 'maxlength' => '255'))}}

				{{ Form::label('subcategory_id', 'Subcategory:', array('class' => 'form-spacing-top')) }}
				<select class="form-control" name="category_id">


				</select>
				
				{{ Form::label('slug', 'Slug:', array('class' => 'form-spacing-top')) }}
				{{ Form::text('slug', null, array('class' => 'form-control', 'required' => '', 'minlength' => '5', 'maxlength' => '255') ) }}

				{{ Form::label('video_url', 'Video url:', array('class' => 'form-spacing-top')) }}
				{{ Form::text('video_url', null, array('class' => 'form-control', 'required' => '', 'minlength' => '5', 'maxlength' => '255') ) }}

				<div class="row">
					<div class="col-md-6">
						{{ Form::label('tags', 'Tags:', array('class' => 'form-spacing-top')) }}
						<select class="form-control select2-multi" name="tags[]" multiple="multiple">
						   

						</select>
					</div>
					<div class="col-md-6">
						{{ Form::label('featured_img', 'Upload a Featured Image', array('class' => 'form-spacing-top')) }}
						{{ Form::file('featured_img') }}
				   
					</div>			
				</div>			
			</div>			
			
			<div class="col-md-6">	

					{{Form::label('excerpt', 'Excerpt:', array('class' => 'form-spacing-top'))}}
					{{Form::textarea('excerpt', null, array('class' => 'form-control'))}}

					{{Form::label('about_channel', 'Some words about this channel:', array('class' => 'form-spacing-top'))}}
					{{Form::textarea('about_channel', null, array('class' => 'form-control'))}}
		
			</div>
        </div>
		
		<div class="form-spacing-top">	
			{{Form::submit('Create a New Post', array('class' => 'button btn-success btn-block'))}}
			{!! Form::close() !!}
		</div>
    </div>
</section>
@endsection

@section('scripts')


@endsection