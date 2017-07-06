<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\PrescribedMedicine;
use App\Http\Requests\CreatePrescribedMedicineRequest;
use App\Http\Requests\UpdatePrescribedMedicineRequest;
use Illuminate\Http\Request;



class PrescribedMedicineController extends Controller {

	/**
	 * Display a listing of prescribedmedicine
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $prescribedmedicine = PrescribedMedicine::all();

		return view('admin.prescribedmedicine.index', compact('prescribedmedicine'));
	}

	/**
	 * Show the form for creating a new prescribedmedicine
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.prescribedmedicine.create');
	}

	/**
	 * Store a newly created prescribedmedicine in storage.
	 *
     * @param CreatePrescribedMedicineRequest|Request $request
	 */
	public function store(CreatePrescribedMedicineRequest $request)
	{
	    
		PrescribedMedicine::create($request->all());

		return redirect()->route(config('quickadmin.route').'.prescribedmedicine.index');
	}

	/**
	 * Show the form for editing the specified prescribedmedicine.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$prescribedmedicine = PrescribedMedicine::find($id);
	    
	    
		return view('admin.prescribedmedicine.edit', compact('prescribedmedicine'));
	}

	/**
	 * Update the specified prescribedmedicine in storage.
     * @param UpdatePrescribedMedicineRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdatePrescribedMedicineRequest $request)
	{
		$prescribedmedicine = PrescribedMedicine::findOrFail($id);

        

		$prescribedmedicine->update($request->all());

		return redirect()->route(config('quickadmin.route').'.prescribedmedicine.index');
	}

	/**
	 * Remove the specified prescribedmedicine from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		PrescribedMedicine::destroy($id);

		return redirect()->route(config('quickadmin.route').'.prescribedmedicine.index');
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
            PrescribedMedicine::destroy($toDelete);
        } else {
            PrescribedMedicine::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.prescribedmedicine.index');
    }

}
