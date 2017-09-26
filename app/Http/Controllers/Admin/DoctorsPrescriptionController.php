<?php

namespace App\Http\Controllers\Admin;

use App\Diagnosis;
use App\Diseases;
use App\Hospital;
use App\Http\Controllers\Controller;
use App\Medicine;
use App\MedicineSchedule;
use App\Patient;
use App\PrescribedDiagnosis;
use App\PrescribedMedicine;
use App\Prescription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
        $request = $this->saveFiles($request);

        $last_prescription = Prescription::create([
            'patient_id' => $request->patient_id,
            'doctor_id' => Auth::id(),
            'hospital_id' => $request->hospital_id,
            'document_id' => $request->document_id,
            'created_by' => Auth::id(),
            'problems' => $request->problems,
            'notes' => $request->notes

        ]);


        if ($request->medicine_id1 > 0) {
            PrescribedMedicine::create([
                'prescription_id' => $last_prescription->id,
                'medicine_id' => $request->medicine_id1,
                'schedule_id' => $request->schedule_id1,
                'days' => $request->days1
            ]);
        }

        if($request->medicine_id2 > 0){
            PrescribedMedicine::create([
                'prescription_id' => $last_prescription->id,
                'medicine_id' => $request->medicine_id2,
                'schedule_id' => $request->schedule_id2,
                'days' => $request->days2
            ]);
        }

        if($request->medicine_id3 > 0){
            PrescribedMedicine::create([
                'prescription_id' => $last_prescription->id,
                'medicine_id' => $request->medicine_id3,
                'schedule_id' => $request->schedule_id3,
                'days' => $request->days3
            ]);
        }

        if ($request->diagnosis_id1 > 0){
            PrescribedDiagnosis::create([
                'prescription_id' => $last_prescription->id,
                'diagnosis_id' => $request->diagnosis_id1
            ]);
        }
        if ($request->diagnosis_id2 > 0){
            PrescribedDiagnosis::create([
                'prescription_id' => $last_prescription->id,
                'diagnosis_id' => $request->diagnosis_id2
            ]);
        }
        if ($request->diagnosis_id3 > 0){
            PrescribedDiagnosis::create([
                'prescription_id' => $last_prescription->id,
                'diagnosis_id' => $request->diagnosis_id3
            ]);
        }

        return redirect()->route('admin.doctorsprescription.index');
	}

}