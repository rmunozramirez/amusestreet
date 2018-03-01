<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
	public function Category()
    {
    	return $this->belongsTo('App\Category');
    }
	
    public function channel()
    {
	return $this->belongsToMany('App\Channel')->withTimestamps();
	}	
	
    public function channels()
    {
	    	return $this->belongsToMany(Channel::class, 'channel_subcategory', 'channel_id', 'subcategory_id')->withTimestamps();
	}
	

	public function channels_subcategories()
    {
    	return $this->hasMany('channel_subcategory')->withTimestamps();
    }

    public function keyword()
    {
		return $this->belongsToMany('App\Keyword');
	}
}
