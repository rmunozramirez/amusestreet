@extends('layouts.app')
@section ('title', '| We believe in Music')
@section('content')
<section id="content" class="container sky-form">

    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron">
                <h1>Welcome to My Page!</h1>
                <p class="lead">Thank you so much for visiting. This is my test website built with Laravel. Please read my popular post!</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Popular Post</a></p>
            </div>
        </div>
    </div> <!-- end of header .row -->

    <div class="row">
        <div class="col-md-12">
            <h2 class="post-title">Recent Posts </h2>   

            @foreach ($posts as $post)
            <div class="col-md-3 recent-posts">
                <a href="#"><img src="{{asset('/images/' . $post->featured_image)}}" width="100%" class="thumbnail"/></a>
                <div class="media-body">
                    <h4 class="media-heading"><a href="{{ url('blog/'.$post->slug) }}">{{ substr(strip_tags($post->title), 0, 30) }} {{ substr(strip_tags($post->title), 0, 30) > 30 ? "..." : "" }}</a>
</h4>
                    <p class="author small">{{ date('M j, Y', strtotime($post->created_at)) }}</p>
                    <p>{{ substr(strip_tags($post->body), 0, 100) }}{{ strlen(strip_tags($post->body)) > 100 ? "..." : "" }}</p>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection