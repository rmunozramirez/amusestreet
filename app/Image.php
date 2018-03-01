<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{

    public function keyword()
    {
		return $this->belongsToMany('App\Keyword')->withTimestamps();
	}
	
    public function posts()
    {
		return $this->belongsToMany('App\Post')->withTimestamps();
	}
	
    public function pages()
    {
		return $this->belongsToMany('App\Page')->withTimestamps();
	}
	
	public function user()
    {
    	return $this->belongsTo('App\User');
    }
	
}
