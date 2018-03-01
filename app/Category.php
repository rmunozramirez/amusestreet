<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    public function subcategories()
    {
	return $this->hasMany('App\Subcategory');
	}

    public function channels()
    {
	return $this->hasManyThrough('App\Channel','App\Subcategory');
	}

    public function keyword()
    {
		return $this->belongsToMany('App\Keyword');
	}
}
