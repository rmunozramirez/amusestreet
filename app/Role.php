<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    public function users()
    {
        return $this->belongsToMany('App\User');
    }
	
    public function posts()
    {
        return $this->belongsToMany('App\Post');
    }
	
    public function pages()
    {
        return $this->belongsToMany('App\Page')->withTimestamps();
    }
}
