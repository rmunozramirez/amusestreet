@extends('layouts.app')

@section ('title', "| Edit Channel: $channel->title")

@section('stylesheets')

	{!! Html::style('css/select2.min.css') !!}

	<script>
		tinymce.init({
			selector: 'textarea',
			plugins: 'link code',
			menubar: false
		});
	</script>

@endsection

@section('content')
<section id="content" class="container">
    <div class="row">
     {!! Form::model($channel, ['route' => ['channels.update', $channel->id], 'method' => 'PUT', 'files' => true]) !!}   
    <div class="col-md-8">
        <div class="all-blogs">
        {{ Form::label('title', 'Title:') }}
		{{ Form::text('title', null, ["class" => 'form-control input-lg']) }}
            
        {{ Form::label('slug', 'Slug:', ['class' => 'form-spacing-top']) }}
        {{ Form::text('slug', null, array('class' => 'form-control', 'required' => '', 'minlength' => '5', 'maxlength' => '255') ) }}

        {{ Form::label('category_id', "Category:", ['class' => 'form-spacing-top']) }}
        {{ Form::select('category_id', $categories, null, ['class' => 'form-control']) }}   
        
         <img src="{{asset('/images/' . $channel->featured_image)}}" width="100%" class="top-50"/>
                
        {{ Form::label('featured_img', 'Update a Featured Image', array('class' => 'form-spacing-top')) }}
        {{ Form::file('featured_img') }}
        
        {{ Form::label('body', 'Body:', ['class' => 'form-spacing-top']) }}
        {{ Form::textarea('body', null, ['class' => 'form-control']) }}
        </div>
    </div>
     <div class="col-md-4">
    <div class="well">
            <dl class="dl-horizontal">
                <dl class="dl-horizontal">
                    <label>Created At:</label>
                    <p>{{ date('M j, Y h:ia', strtotime($channel->created_at)) }}</p>
                </dl>

                <dl class="dl-horizontal">
                    <label>Last Updated:</label>
                    <p>{{ date('M j, Y h:ia', strtotime($channel->updated_at)) }}</p>
                </dl>
                
                <dl class="dl-horizontal">
                    <label>Category:</label>
                    <p>{{ $channel->category->title }}</p>
                </dl>
            </dl>
                <hr>
        <div class="row">
            <div class="col-md-6">
                {{ Form::submit('Save', ['class' => 'button btn-bock btn-success']) }}
            </div>
            <div class="col-md-6">
                {!! Html::linkRoute('channels.show', 'Cancel', array($channel->id), array('class' => 'button btn-danger btn-bock')) !!}      
            </div>
        </div>
        </div>

    </div>
     {!! Form::close() !!}
    </div>
</section>
@endsection

@section('scripts')

	{!! Html::script('js/select2.min.js') !!}

	<script type="text/javascript">

		$('.select2-multi').select2();
		$('.select2-multi').select2().val({!! json_encode($channel->tags()->getRelatedIds()) !!}).trigger('change');

	</script>

@endsection
