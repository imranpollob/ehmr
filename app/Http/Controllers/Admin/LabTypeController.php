<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\LabType;
use App\Http\Requests\CreateLabTypeRequest;
use App\Http\Requests\UpdateLabTypeRequest;
use Illuminate\Http\Request;



class LabTypeController extends Controller {

	/**
	 * Display a listing of labtype
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $labtype = LabType::all();

		return view('admin.labtype.index', compact('labtype'));
	}

	/**
	 * Show the form for creating a new labtype
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.labtype.create');
	}

	/**
	 * Store a newly created labtype in storage.
	 *
     * @param CreateLabTypeRequest|Request $request
	 */
	public function store(CreateLabTypeRequest $request)
	{
	    
		LabType::create($request->all());

		return redirect()->route(config('quickadmin.route').'.labtype.index');
	}

	/**
	 * Show the form for editing the specified labtype.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$labtype = LabType::find($id);
	    
	    
		return view('admin.labtype.edit', compact('labtype'));
	}

	/**
	 * Update the specified labtype in storage.
     * @param UpdateLabTypeRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateLabTypeRequest $request)
	{
		$labtype = LabType::findOrFail($id);

        

		$labtype->update($request->all());

		return redirect()->route(config('quickadmin.route').'.labtype.index');
	}

	/**
	 * Remove the specified labtype from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		LabType::destroy($id);

		return redirect()->route(config('quickadmin.route').'.labtype.index');
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
            LabType::destroy($toDelete);
        } else {
            LabType::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.labtype.index');
    }

}
