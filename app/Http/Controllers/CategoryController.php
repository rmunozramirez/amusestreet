<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use App\Channel;
use App\Subcategory;
use App\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$categories = Category::with('subcategories')->orderBy('title', 'desc')->paginate(10);
		return view('categories.index')->withCategories($categories);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
		$category = Category::find('music');
		/*
		$channels = array();
		$subcategories = array();
	
			foreach ($category->channels as $channel)
				{
					
				   return $channel->title;

			     }
		
		 
		 */
		 $channels = DB::table('channels')
			->join('channel_subcategory', 'channels.id', '=', 'channel_subcategory.channel_id')
			->join('subcategories', 'subcategories.id', '=', 'channel_subcategory.subcategory_id')
			->join('categories', 'categories.id', '=', 'subcategories.category_id')
			->select('channels.title', 'subcategories.title')
			->where('categories.slug', "=", $slug)
			->get(); 
		$channels = $category->channels;
	echo '<pre>';var_dump($channels);echo '</pre>';die;
		die;
			
        return view('categories.show')->withCategory($category)->withChannels($channels);
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
