<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Prescription;
use App\Http\Requests\CreatePrescriptionRequest;
use App\Http\Requests\UpdatePrescriptionRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;


class PrescriptionController extends Controller {

	/**
	 * Display a listing of prescription
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $prescription = Prescription::all();

		return view('admin.prescription.index', compact('prescription'));
	}

	/**
	 * Show the form for creating a new prescription
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.prescription.create');
	}

	/**
	 * Store a newly created prescription in storage.
	 *
     * @param CreatePrescriptionRequest|Request $request
	 */
	public function store(CreatePrescriptionRequest $request)
	{
	    $request = $this->saveFiles($request);
		Prescription::create($request->all());

		return redirect()->route(config('quickadmin.route').'.prescription.index');
	}

	/**
	 * Show the form for editing the specified prescription.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$prescription = Prescription::find($id);
	    
	    
		return view('admin.prescription.edit', compact('prescription'));
	}

	/**
	 * Update the specified prescription in storage.
     * @param UpdatePrescriptionRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdatePrescriptionRequest $request)
	{
		$prescription = Prescription::findOrFail($id);

        $request = $this->saveFiles($request);

		$prescription->update($request->all());

		return redirect()->route(config('quickadmin.route').'.prescription.index');
	}

	/**
	 * Remove the specified prescription from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Prescription::destroy($id);

		return redirect()->route(config('quickadmin.route').'.prescription.index');
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
            Prescription::destroy($toDelete);
        } else {
            Prescription::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.prescription.index');
    }

}
