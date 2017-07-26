<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Diseases;
use App\Http\Requests\CreateDiseasesRequest;
use App\Http\Requests\UpdateDiseasesRequest;
use Illuminate\Http\Request;



class DiseasesController extends Controller {

	/**
	 * Display a listing of diseases
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $diseases = Diseases::all();

		return view('admin.diseases.index', compact('diseases'));
	}

	/**
	 * Show the form for creating a new diseases
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.diseases.create');
	}

	/**
	 * Store a newly created diseases in storage.
	 *
     * @param CreateDiseasesRequest|Request $request
	 */
	public function store(CreateDiseasesRequest $request)
	{
	    
		Diseases::create($request->all());

		return redirect()->route(config('quickadmin.route').'.diseases.index');
	}

	/**
	 * Show the form for editing the specified diseases.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$diseases = Diseases::find($id);
	    
	    
		return view('admin.diseases.edit', compact('diseases'));
	}

	/**
	 * Update the specified diseases in storage.
     * @param UpdateDiseasesRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDiseasesRequest $request)
	{
		$diseases = Diseases::findOrFail($id);

        

		$diseases->update($request->all());

		return redirect()->route(config('quickadmin.route').'.diseases.index');
	}

	/**
	 * Remove the specified diseases from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Diseases::destroy($id);

		return redirect()->route(config('quickadmin.route').'.diseases.index');
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
            Diseases::destroy($toDelete);
        } else {
            Diseases::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.diseases.index');
    }

}
