<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Keyword extends Model
{
    public function channel()
    {
    	return $this->belongsToMany('App\Channel')->withTimestamps();
    }
	
    public function subcategory()
    {
		return $this->belongsToMany('App\Subcategory')->withTimestamps();
	}
	
    public function category()
    {
		return $this->belongsToMany('App\Category')->withTimestamps();
	}
	
    public function image()
    {
		return $this->belongsToMany('App\Image')->withTimestamps();
	}
	
    public function posts()
    {
		return $this->belongsToMany('App\Post')->withTimestamps();
	}

    public function post_categories()
    {
		return $this->belongsToMany('App\Post_category')->withTimestamps();
	}
	
    public function pages()
    {
		return $this->belongsToMany('App\Page')->withTimestamps();
	}
}