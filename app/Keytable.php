<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keytable extends Model
{
    public function keyword()
    {
	return $this->hasMany('App\Keyword');
	}
	
    public function channel()
    {
	return $this->hasMany('App\Channel');
	}
	
    public function subcategory()
    {
	return $this->hasMany('App\Subcategory');
	}
	
    public function category()
    {
	return $this->hasMany('App\Category');
	}
	
    public function image()
    {
	return $this->hasMany('App\Image');
	}
	
    public function posts()
    {
	return $this->hasMany('App\Post');
	}

    public function post_categories()
    {
	return $this->hasMany('App\Post_category');
	}
	
    public function pages()
    {
	return $this->hasMany('App\Page');
	}
}
