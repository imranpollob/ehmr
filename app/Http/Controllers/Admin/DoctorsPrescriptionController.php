<?php

namespace App\Http\Controllers\Admin;

use App\Diagnosis;
use App\Diseases;
use App\Hospital;
use App\Http\Controllers\Controller;
use App\Medicine;
use App\MedicineSchedule;
use App\Patient;
use Illuminate\Http\Request;

class DoctorsPrescriptionController extends Controller {


	public function index()
    {
        $patient = Patient::pluck('name', 'id');
        $hospital = Hospital::pluck('name', 'id');
        $disease = Diseases::pluck('title', 'id');
        $medicine = Medicine::pluck('brand_name', 'id');
        $medicine_schedule = MedicineSchedule::pluck('title', 'id');
        $diagnosis = Diagnosis::pluck('name','id');

		return view('admin.doctorsprescription.index',
            compact('patient','hospital','disease','medicine','medicine_schedule','diagnosis'));
	}

    public function store(Request $request)
    {
        dd($request->all());
	}

}