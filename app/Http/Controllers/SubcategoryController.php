<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use App\Channel;
use App\Subcategory;

class SubcategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$subcategories = Subcategory::with('channels')->orderBy('title', 'desc')->paginate(10);
		return view('subcategories.index')->withSubcategories($subcategories);
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
		$category = DB::table('categories')
			->join('subcategories', 'categories.id', '=', 'subcategories.category_id')
			->select('categories.*')
			->where('subcategories.slug', $slug)
			->first();
			
		$subcategory = Subcategory::with('channels')->where('slug', $slug)->first();
		
		$channels = DB::table('subcategories')
			->join('channel_subcategory', 'subcategories.id', '=', 'channel_subcategory.subcategory_id')
			->join('channels', 'channels.id', '=', 'channel_subcategory.channel_id')
			->select('channels.*')
			->where('subcategories.slug', $slug)
			->get();
			/* echo '<pre>';var_dump($category);echo '</pre>';
			die; */
        return view('subcategories.show')->withCategory($category)->withSubcategory($subcategory)->withChannels($channels);
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
