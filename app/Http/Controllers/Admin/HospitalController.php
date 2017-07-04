<?php

namespace App\Http\Controllers\Admin;

use App\HospitalType;
use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Hospital;
use App\Http\Requests\CreateHospitalRequest;
use App\Http\Requests\UpdateHospitalRequest;
use Illuminate\Http\Request;



class HospitalController extends Controller {

	/**
	 * Display a listing of hospital
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $hospital = Hospital::all();

		return view('admin.hospital.index', compact('hospital'));
	}

	/**
	 * Show the form for creating a new hospital
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $hospital_type = HospitalType::pluck("title", "id");
	    
	    return view('admin.hospital.create', compact('hospital_type'));
	}

	/**
	 * Store a newly created hospital in storage.
	 *
     * @param CreateHospitalRequest|Request $request
	 */
	public function store(CreateHospitalRequest $request)
	{
	    
		Hospital::create($request->all());

		return redirect()->route(config('quickadmin.route').'.hospital.index');
	}

	/**
	 * Show the form for editing the specified hospital.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$hospital = Hospital::find($id);
	    
	    
		return view('admin.hospital.edit', compact('hospital'));
	}

	/**
	 * Update the specified hospital in storage.
     * @param UpdateHospitalRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateHospitalRequest $request)
	{
		$hospital = Hospital::findOrFail($id);

        

		$hospital->update($request->all());

		return redirect()->route(config('quickadmin.route').'.hospital.index');
	}

	/**
	 * Remove the specified hospital from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Hospital::destroy($id);

		return redirect()->route(config('quickadmin.route').'.hospital.index');
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
            Hospital::destroy($toDelete);
        } else {
            Hospital::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.hospital.index');
    }

}
