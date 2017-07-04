<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\BloodGroup;
use App\Http\Requests\CreateBloodGroupRequest;
use App\Http\Requests\UpdateBloodGroupRequest;
use Illuminate\Http\Request;



class BloodGroupController extends Controller {

	/**
	 * Display a listing of bloodgroup
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $bloodgroup = BloodGroup::all();

		return view('admin.bloodgroup.index', compact('bloodgroup'));
	}

	/**
	 * Show the form for creating a new bloodgroup
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.bloodgroup.create');
	}

	/**
	 * Store a newly created bloodgroup in storage.
	 *
     * @param CreateBloodGroupRequest|Request $request
	 */
	public function store(CreateBloodGroupRequest $request)
	{
	    
		BloodGroup::create($request->all());

		return redirect()->route(config('quickadmin.route').'.bloodgroup.index');
	}

	/**
	 * Show the form for editing the specified bloodgroup.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$bloodgroup = BloodGroup::find($id);
	    
	    
		return view('admin.bloodgroup.edit', compact('bloodgroup'));
	}

	/**
	 * Update the specified bloodgroup in storage.
     * @param UpdateBloodGroupRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateBloodGroupRequest $request)
	{
		$bloodgroup = BloodGroup::findOrFail($id);

        

		$bloodgroup->update($request->all());

		return redirect()->route(config('quickadmin.route').'.bloodgroup.index');
	}

	/**
	 * Remove the specified bloodgroup from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		BloodGroup::destroy($id);

		return redirect()->route(config('quickadmin.route').'.bloodgroup.index');
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
            BloodGroup::destroy($toDelete);
        } else {
            BloodGroup::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.bloodgroup.index');
    }

}
