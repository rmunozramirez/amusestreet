<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Postcategory extends Model
{
    public function keyword()
    {
		return $this->belongsToMany('App\Keyword')->withTimestamps();
	}
	
    public function posts()
    {
	return $this->
		return $this->belongsToMany('App\Post')->withTimestamps();
	}
}