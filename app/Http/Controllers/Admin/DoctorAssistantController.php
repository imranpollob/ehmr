<?php

namespace App\Http\Controllers\Admin;

use App\BloodGroup;
use App\Doctor;
use App\Hospital;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Redirect;
use Schema;
use App\DoctorAssistant;
use App\Http\Requests\CreateDoctorAssistantRequest;
use App\Http\Requests\UpdateDoctorAssistantRequest;
use Illuminate\Http\Request;



class DoctorAssistantController extends Controller {

	/**
	 * Display a listing of doctorassistant
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $doctorassistant = DoctorAssistant::orderBy('id','desc')->paginate(10);

		return view('admin.doctorassistant.index', compact('doctorassistant'));
	}

	/**
	 * Show the form for creating a new doctorassistant
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
        $blood_group = BloodGroup::pluck("title","id");
        $hospital = Hospital::pluck('name', 'id');
        $doctor = Doctor::pluck('name', 'id');

        return view('admin.doctorassistant.create', compact('blood_group','hospital','doctor'));
	}

	/**
	 * Store a newly created doctorassistant in storage.
	 *
     * @param CreateDoctorAssistantRequest|Request $request
	 */
	public function store(CreateDoctorAssistantRequest $request)
	{

        $check = User::where("email", $request->email)->get();

        if ($check->count()){
            return redirect()->route(config('quickadmin.route').'.patient.create')
                ->with('warning', 'Duplicate Email Address!');
        }
        else{
            $da = DoctorAssistant::create($request->all());
            User::create([
                "role_id"=>6,
                "user_id"=>$da->id,
                "name"=>$da->name,
                "email"=>$request->email,
                "password"=>Hash::make($request->password)
            ]);

        }
	    
		DoctorAssistant::create($request->all());

		return redirect()->route(config('quickadmin.route').'.doctorassistant.index');
	}

	/**
	 * Show the form for editing the specified doctorassistant.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$doctorassistant = DoctorAssistant::find($id);
	    
	    
		return view('admin.doctorassistant.edit', compact('doctorassistant'));
	}

	/**
	 * Update the specified doctorassistant in storage.
     * @param UpdateDoctorAssistantRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDoctorAssistantRequest $request)
	{
		$doctorassistant = DoctorAssistant::findOrFail($id);

        

		$doctorassistant->update($request->all());

		return redirect()->route(config('quickadmin.route').'.doctorassistant.index');
	}

	/**
	 * Remove the specified doctorassistant from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		DoctorAssistant::destroy($id);

		return redirect()->route(config('quickadmin.route').'.doctorassistant.index');
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
            DoctorAssistant::destroy($toDelete);
        } else {
            DoctorAssistant::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.doctorassistant.index');
    }

}
