@extends('layouts.app')
@section ('title', '| About us')
@section('content')
<section id="content" class="container sky-form">
    @include('partials._content-header')  
    <div class="row">

        @include('partials._pages-content')

    </div>
</section>
@endsection