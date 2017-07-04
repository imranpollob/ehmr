<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\LabType;
use Redirect;
use Schema;
use App\Lab;
use App\Http\Requests\CreateLabRequest;
use App\Http\Requests\UpdateLabRequest;
use Illuminate\Http\Request;



class LabController extends Controller {

	/**
	 * Display a listing of lab
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $lab = Lab::all();

		return view('admin.lab.index', compact('lab'));
	}

	/**
	 * Show the form for creating a new lab
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $lab_type = LabType::pluck("title", "id");
	    
	    return view('admin.lab.create', compact("lab_type"));
	}

	/**
	 * Store a newly created lab in storage.
	 *
     * @param CreateLabRequest|Request $request
	 */
	public function store(CreateLabRequest $request)
	{
	    
		Lab::create($request->all());

		return redirect()->route(config('quickadmin.route').'.lab.index');
	}

	/**
	 * Show the form for editing the specified lab.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$lab = Lab::find($id);
	    
	    
		return view('admin.lab.edit', compact('lab'));
	}

	/**
	 * Update the specified lab in storage.
     * @param UpdateLabRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateLabRequest $request)
	{
		$lab = Lab::findOrFail($id);

        

		$lab->update($request->all());

		return redirect()->route(config('quickadmin.route').'.lab.index');
	}

	/**
	 * Remove the specified lab from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Lab::destroy($id);

		return redirect()->route(config('quickadmin.route').'.lab.index');
	}

    /**
     * Mass delete function from index page
     * @param Request $request
     *
     * @return mixed
     */
    public function massDelete(Request $request)
    {
        if ($request->get('toDelete') != 'mass') {
            $toDelete = json_decode($request->get('toDelete'));
            Lab::destroy($toDelete);
        } else {
            Lab::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.lab.index');
    }

}
