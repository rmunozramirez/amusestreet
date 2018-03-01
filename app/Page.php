<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{

    public function keyword()
    {
		return $this->belongsToMany('App\Keyword')->withTimestamps();
	}
	
    public function image()
    {
		return $this->belongsToMany('App\Image')->withTimestamps();
	}
}
