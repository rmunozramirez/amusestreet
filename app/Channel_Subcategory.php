<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    public function subcategory()
    {
    	return $this->belongsTo('Subcategory')->withTimestamps();
    } 
	
    public function channel()
    {
    	return $this->belongsTo('Channel')->withTimestamps();
    } 



}
