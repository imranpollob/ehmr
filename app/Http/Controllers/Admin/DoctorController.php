<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Hash;
use Redirect;
use Schema;
use App\Doctor;
use App\BloodGroup;
use App\Http\Requests\CreateDoctorRequest;
use App\Http\Requests\UpdateDoctorRequest;
use Illuminate\Http\Request;



class DoctorController extends Controller {

	/**
	 * Display a listing of doctor
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $doctor = Doctor::all();

		return view('admin.doctor.index', compact('doctor'));
	}

	/**
	 * Show the form for creating a new doctor
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{

        $blood_group = BloodGroup::pluck("title","id");

	    return view('admin.doctor.create',compact('blood_group'));
	}

	/**
	 * Store a newly created doctor in storage.
	 *
     * @param CreateDoctorRequest|Request $request
	 */
	public function store(CreateDoctorRequest $request)
	{

        $check = User::where("email", $request->email)->get();

        if ($check->count()){
            return redirect()->route(config('quickadmin.route').'.patient.create')
                ->with('warning', 'Duplicate Email Address!');
        }
        else{
            $doctor = Doctor::create($request->all());
            User::create([
                "role_id"=>3,
                "user_id"=>$doctor->id,
                "name"=>$doctor->name,
                "email"=>$request->email,
                "password"=>Hash::make($request->password)
            ]);

        }

		return redirect()->route(config('quickadmin.route').'.doctor.index');
	}

	/**
	 * Show the form for editing the specified doctor.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$doctor = Doctor::find($id);
	    
	    
		return view('admin.doctor.edit', compact('doctor'));
	}

	/**
	 * Update the specified doctor in storage.
     * @param UpdateDoctorRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDoctorRequest $request)
	{
		$doctor = Doctor::findOrFail($id);

        

		$doctor->update($request->all());

		return redirect()->route(config('quickadmin.route').'.doctor.index');
	}

	/**
	 * Remove the specified doctor from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Doctor::destroy($id);

		return redirect()->route(config('quickadmin.route').'.doctor.index');
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
            Doctor::destroy($toDelete);
        } else {
            Doctor::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.doctor.index');
    }

}
