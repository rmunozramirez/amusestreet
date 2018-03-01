<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{

    public function keyword()
    {
		return $this->belongsToMany('App\Keyword')->withTimestamps();
	}
	
    public function image()
    {
		return $this->belongsToMany('App\Image')->withTimestamps();
	}
	
    public function postcategories()
    {
		return $this->belongsToMany('App\Postcategory')->withTimestamps();
	}

}
