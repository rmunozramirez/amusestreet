<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Channel extends Model
{
    public function subcategories()
    {
    	return $this->belongsToMany(Subcategory::class, 'channel_subcategory', 'channel_id', 'subcategory_id')->withTimestamps();
    } 

	public function channels_subcategories()
    {
    	return $this->hasMany('channel_subcategory')->withTimestamps();
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function keyword()
    {
		return $this->belongsToMany('App\Keyword')->withTimestamps();
	}
	
    public function comments()
    {
        return $this->hasMany('App\Comment');
    }
}
