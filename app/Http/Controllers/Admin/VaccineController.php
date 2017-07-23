<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Vaccine;
use App\Http\Requests\CreateVaccineRequest;
use App\Http\Requests\UpdateVaccineRequest;
use Illuminate\Http\Request;



class VaccineController extends Controller {

	/**
	 * Display a listing of vaccine
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $vaccine = Vaccine::all();

		return view('admin.vaccine.index', compact('vaccine'));
	}

	/**
	 * Show the form for creating a new vaccine
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.vaccine.create');
	}

	/**
	 * Store a newly created vaccine in storage.
	 *
     * @param CreateVaccineRequest|Request $request
	 */
	public function store(CreateVaccineRequest $request)
	{
	    
		Vaccine::create($request->all());

		return redirect()->route(config('quickadmin.route').'.vaccine.index');
	}

	/**
	 * Show the form for editing the specified vaccine.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$vaccine = Vaccine::find($id);
	    
	    
		return view('admin.vaccine.edit', compact('vaccine'));
	}

	/**
	 * Update the specified vaccine in storage.
     * @param UpdateVaccineRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateVaccineRequest $request)
	{
		$vaccine = Vaccine::findOrFail($id);

        

		$vaccine->update($request->all());

		return redirect()->route(config('quickadmin.route').'.vaccine.index');
	}

	/**
	 * Remove the specified vaccine from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Vaccine::destroy($id);

		return redirect()->route(config('quickadmin.route').'.vaccine.index');
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
            Vaccine::destroy($toDelete);
        } else {
            Vaccine::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.vaccine.index');
    }

}
