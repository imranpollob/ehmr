<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\HospitalType;
use App\Http\Requests\CreateHospitalTypeRequest;
use App\Http\Requests\UpdateHospitalTypeRequest;
use Illuminate\Http\Request;



class HospitalTypeController extends Controller {

	/**
	 * Display a listing of hospitaltype
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $hospitaltype = HospitalType::all();

		return view('admin.hospitaltype.index', compact('hospitaltype'));
	}

	/**
	 * Show the form for creating a new hospitaltype
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.hospitaltype.create');
	}

	/**
	 * Store a newly created hospitaltype in storage.
	 *
     * @param CreateHospitalTypeRequest|Request $request
	 */
	public function store(CreateHospitalTypeRequest $request)
	{
	    
		HospitalType::create($request->all());

		return redirect()->route(config('quickadmin.route').'.hospitaltype.index');
	}

	/**
	 * Show the form for editing the specified hospitaltype.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$hospitaltype = HospitalType::find($id);
	    
	    
		return view('admin.hospitaltype.edit', compact('hospitaltype'));
	}

	/**
	 * Update the specified hospitaltype in storage.
     * @param UpdateHospitalTypeRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateHospitalTypeRequest $request)
	{
		$hospitaltype = HospitalType::findOrFail($id);

        

		$hospitaltype->update($request->all());

		return redirect()->route(config('quickadmin.route').'.hospitaltype.index');
	}

	/**
	 * Remove the specified hospitaltype from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		HospitalType::destroy($id);

		return redirect()->route(config('quickadmin.route').'.hospitaltype.index');
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
            HospitalType::destroy($toDelete);
        } else {
            HospitalType::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.hospitaltype.index');
    }

}
