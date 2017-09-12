<?php

namespace App\Http\Controllers\Admin;

use App\BloodGroup;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Hash;
use Redirect;
use Schema;
use App\Patient;
use App\Http\Requests\CreatePatientRequest;
use App\Http\Requests\UpdatePatientRequest;
use Illuminate\Http\Request;



class PatientController extends Controller {

	/**
	 * Display a listing of patient
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $patient = Patient::orderBy('id','desc')->paginate(10);

		return view('admin.patient.index', compact('patient'));
	}

	/**
	 * Show the form for creating a new patient
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $blood_group = BloodGroup::pluck("title","id");
	    
	    return view('admin.patient.create',compact('blood_group'));
	}

	/**
	 * Store a newly created patient in storage.
	 *
     * @param CreatePatientRequest|Request $request
	 */
	public function store(CreatePatientRequest $request)
	{
	    $check = User::where("email", $request->email)->get();

	    if ($check->count()){
            return redirect()->route(config('quickadmin.route').'.patient.create')
                ->with('warning', 'Duplicate Email Address!');
        }
        else{
            $patient = Patient::create($request->all());
            User::create([
                "role_id"=>2,
                "user_id"=>$patient->id,
                "name"=>$patient->name,
                "email"=>$request->email,
                "password"=>Hash::make($request->password)
            ]);

        }



		return redirect()->route(config('quickadmin.route').'.patient.index');
	}

	/**
	 * Show the form for editing the specified patient.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$patient = Patient::find($id);
	    
	    
		return view('admin.patient.edit', compact('patient'));
	}

	/**
	 * Update the specified patient in storage.
     * @param UpdatePatientRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdatePatientRequest $request)
	{
		$patient = Patient::findOrFail($id);

        

		$patient->update($request->all());

		return redirect()->route(config('quickadmin.route').'.patient.index');
	}

	/**
	 * Remove the specified patient from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Patient::destroy($id);

		return redirect()->route(config('quickadmin.route').'.patient.index');
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
            Patient::destroy($toDelete);
        } else {
            Patient::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.patient.index');
    }

}
