<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
	
    public function images()
    {
		return $this->hasMany('App\Image');
	}
	
    public function language()
    {
    	return $this->belongsTo('App\Language');
    }
	
    public function roles()
    {
        return $this->belongsToMany('App\Role')->withTimestamps();
    }
	
    public function comments()
    {
        return $this->hasMany('App\Comment');
    }
}
