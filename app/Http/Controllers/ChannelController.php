<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use App\Channel;
use App\Subcategory;

class ChannelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

		$channels = Channel::with('subcategories')->orderBy('title', 'desc')->paginate(10);
		return view('channels.index')->withChannels($channels);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('channels.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		
		// validate the data
        $this->validate($request, array(
            'title' => 'required|unique|max:255',
            'title' => 'unique|max:255',
            'image_url' => 'alpha_dash|min:5|max:255|unique',
            'video_url' => 'alpha_dash|min:5|max:255|unique',
            'slug'  => 'required|alpha_dash|min:5|max:255|unique:channels,slug',
        ));
        
        
        //store in the database
        $channel = new Channel;
        
        $channel->status = $request->status;
        $channel->title = $request->title;
        $channel->subtitle = $request->subtitle;
        $channel->excerpt = $request->excerpt;
        $channel->slug = $request->slug;
        $channel->subcategory_id = $request->subcategory_id;
        $channel->about_channel = $request->about_channel;
        $channel->image_url = $request->image_url;
        $channel->video_url = $request->video_url;
		
        $channel->is_featured = $request->is_featured;
        $channel->is_popular = $request->is_popular;
        $channel->is_testimonial = $request->is_testimonial;
        $channel->web = $request->web;
        $channel->facebook = $request->facebook;
        $channel->googleplus = $request->googleplus;
        $channel->twitter = $request->twitter;
        $channel->linkedin = $request->linkedin;
        $channel->youtube = $request->youtube;
        
        if ($request->hasFile('featured_img')) {
          $image = $request->file('featured_img');
          $filename = time() . '.' . $image->getClientOriginalExtension();
          $location = public_path('images/' . $filename);
          Image::make($image)->resize(700, 400)->save($location);

          $channel->featured_image = $filename;
        }
        
        $channel->save();
        
        Session::flash('success', 'Channel was succesfully saved');

        // redirect to another page
       return redirect()->route('channels.show', $channel->id);
	   
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function show($slug)
    {
		$channel = DB::table('channels')->where('slug', $slug)->first();
		
		$subcategories = DB::table('channels')
			->join('channel_subcategory', 'channels.id', '=', 'channel_subcategory.channel_id')
			->join('subcategories', 'subcategories.id', '=', 'channel_subcategory.subcategory_id')
			->select('subcategories.*')
			->where('channels.slug', $slug)
			->get();	
			
		$category = DB::table('channels')
			->join('channel_subcategory', 'channels.id', '=', 'channel_subcategory.channel_id')
			->join('subcategories', 'subcategories.id', '=', 'channel_subcategory.subcategory_id')
			->join('categories', 'categories.id', '=', 'subcategories.category_id')
			->select('categories.*')
			->where('channels.slug', $slug)
			->first();
			
			/* echo '<pre>';var_dump($categories);echo '</pre>';
			die; */

        return view('channels.show')->withCategory($category)->withSubcategories($subcategories)->withChannel($channel);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
