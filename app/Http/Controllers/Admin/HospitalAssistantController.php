<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\HospitalAssistant;
use App\Http\Requests\CreateHospitalAssistantRequest;
use App\Http\Requests\UpdateHospitalAssistantRequest;
use Illuminate\Http\Request;



class HospitalAssistantController extends Controller {

	/**
	 * Display a listing of hospitalassistant
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $hospitalassistant = HospitalAssistant::all();

		return view('admin.hospitalassistant.index', compact('hospitalassistant'));
	}

	/**
	 * Show the form for creating a new hospitalassistant
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.hospitalassistant.create');
	}

	/**
	 * Store a newly created hospitalassistant in storage.
	 *
     * @param CreateHospitalAssistantRequest|Request $request
	 */
	public function store(CreateHospitalAssistantRequest $request)
	{
	    
		HospitalAssistant::create($request->all());

		return redirect()->route(config('quickadmin.route').'.hospitalassistant.index');
	}

	/**
	 * Show the form for editing the specified hospitalassistant.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$hospitalassistant = HospitalAssistant::find($id);
	    
	    
		return view('admin.hospitalassistant.edit', compact('hospitalassistant'));
	}

	/**
	 * Update the specified hospitalassistant in storage.
     * @param UpdateHospitalAssistantRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateHospitalAssistantRequest $request)
	{
		$hospitalassistant = HospitalAssistant::findOrFail($id);

        

		$hospitalassistant->update($request->all());

		return redirect()->route(config('quickadmin.route').'.hospitalassistant.index');
	}

	/**
	 * Remove the specified hospitalassistant from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		HospitalAssistant::destroy($id);

		return redirect()->route(config('quickadmin.route').'.hospitalassistant.index');
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
            HospitalAssistant::destroy($toDelete);
        } else {
            HospitalAssistant::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.hospitalassistant.index');
    }

}
