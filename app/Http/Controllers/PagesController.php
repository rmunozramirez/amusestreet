<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use App\Channel;
use App\Subcategory;

class PagesController extends Controller
{
	
    public function getIndex() {
		return view('pages.welcome');	
	}	
	
    public function getLiveroom($slug) {
		
		$channel = Channel::with('subcategories')->where('slug', $slug)->first();
		return view('pages.liveroom')->withChannel($channel);	
	}	
		
    public function getAbout() {
		return view('pages.about');	
	}	
	
    public function getContact() {
		
		$first = 'Rafael';
		$last ='Muñoz Ramirez';
		$fullname = $first . " " . $last;
		$email = 'rafaelmunoznl@yahoo.com';
		
		$data = [];
		$data['email'] = $email;
		$data['fullname'] = $fullname;
		return view('pages.contact')->withData($data);	
	}
}
