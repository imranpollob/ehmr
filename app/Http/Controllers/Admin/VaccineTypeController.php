<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\VaccineType;
use App\Http\Requests\CreateVaccineTypeRequest;
use App\Http\Requests\UpdateVaccineTypeRequest;
use Illuminate\Http\Request;



class VaccineTypeController extends Controller {

	/**
	 * Display a listing of vaccinetype
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $vaccinetype = VaccineType::all();

		return view('admin.vaccinetype.index', compact('vaccinetype'));
	}

	/**
	 * Show the form for creating a new vaccinetype
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.vaccinetype.create');
	}

	/**
	 * Store a newly created vaccinetype in storage.
	 *
     * @param CreateVaccineTypeRequest|Request $request
	 */
	public function store(CreateVaccineTypeRequest $request)
	{
	    
		VaccineType::create($request->all());

		return redirect()->route(config('quickadmin.route').'.vaccinetype.index');
	}

	/**
	 * Show the form for editing the specified vaccinetype.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$vaccinetype = VaccineType::find($id);
	    
	    
		return view('admin.vaccinetype.edit', compact('vaccinetype'));
	}

	/**
	 * Update the specified vaccinetype in storage.
     * @param UpdateVaccineTypeRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateVaccineTypeRequest $request)
	{
		$vaccinetype = VaccineType::findOrFail($id);

        

		$vaccinetype->update($request->all());

		return redirect()->route(config('quickadmin.route').'.vaccinetype.index');
	}

	/**
	 * Remove the specified vaccinetype from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		VaccineType::destroy($id);

		return redirect()->route(config('quickadmin.route').'.vaccinetype.index');
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
            VaccineType::destroy($toDelete);
        } else {
            VaccineType::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.vaccinetype.index');
    }

}
