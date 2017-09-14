<?php

namespace App\Http\Controllers\Admin;

use App\Diagnosis;
use App\Diseases;
use App\Doctor;
use App\DoctorAssistant;
use App\Hospital;
use App\Http\Controllers\Controller;
use App\Medicine;
use App\MedicineSchedule;
use App\Patient;
use Illuminate\Support\Facades\Auth;
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
        $patient = Patient::pluck('name', 'id');
        $doctor = Doctor::pluck('name', 'id');
        $hospital = Hospital::pluck('name', 'id');
        $assistant = DoctorAssistant::pluck('name', 'id');
        $disease = Diseases::pluck('title', 'id');
        $medicine = Medicine::pluck('brand_name', 'id');
        $medicine_schedule = MedicineSchedule::pluck('title', 'id');
        $diagnosis = Diagnosis::pluck('name','id');
	    
	    return view('admin.prescription.create',
            compact('patient','doctor','hospital','assistant','disease','medicine','medicine_schedule','diagnosis'));
	}

	/**
	 * Store a newly created prescription in storage.
	 *
     * @param CreatePrescriptionRequest|Request $request
	 */
	public function store(CreatePrescriptionRequest $request)
	{
	    $request = $this->saveFiles($request);
        $request['created_by'] = Auth::id();
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

    public function show($id)
    {
        Prescription::find($id);

        return view('admin.prescription.show');

    }

}
