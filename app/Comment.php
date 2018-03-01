<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }
	
    public function channel()
    {
        return $this->belongsTo('App\Channel');
    }
	
    public function post()
    {
        return $this->belongsTo('App\Post');
    }
	
	
}
