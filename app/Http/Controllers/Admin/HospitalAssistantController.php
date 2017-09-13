<?php

namespace App\Http\Controllers\Admin;

use App\BloodGroup;
use App\Hospital;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Hash;
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
        $hospitalassistant = HospitalAssistant::orderBy('id','desc')->paginate(10);

		return view('admin.hospitalassistant.index', compact('hospitalassistant'));
	}

	/**
	 * Show the form for creating a new hospitalassistant
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
        $blood_group = BloodGroup::pluck("title","id");
        $hospital = Hospital::pluck('name', 'id');
	    
	    return view('admin.hospitalassistant.create', compact('blood_group','hospital'));
	}

	/**
	 * Store a newly created hospitalassistant in storage.
	 *
     * @param CreateHospitalAssistantRequest|Request $request
	 */
	public function store(CreateHospitalAssistantRequest $request)
	{
        $check = User::where("email", $request->email)->get();

        if ($check->count()){
            return redirect()->route(config('quickadmin.route').'.patient.create')
                ->with('warning', 'Duplicate Email Address!');
        }
        else{
            $ha = HospitalAssistant::create($request->all());
            User::create([
                "role_id"=>4,
                "user_id"=>$ha->id,
                "name"=>$ha->name,
                "email"=>$request->email,
                "password"=>Hash::make($request->password)
            ]);

        }

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
