<?php

namespace App\Http\Controllers\Admin;

use App\BloodGroup;
use App\Hospital;
use App\Http\Controllers\Controller;
use App\Lab;
use App\User;
use Illuminate\Support\Facades\Hash;
use Redirect;
use Schema;
use App\LabAssistant;
use App\Http\Requests\CreateLabAssistantRequest;
use App\Http\Requests\UpdateLabAssistantRequest;
use Illuminate\Http\Request;



class LabAssistantController extends Controller {

	/**
	 * Display a listing of labassistant
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $labassistant = LabAssistant::all();

		return view('admin.labassistant.index', compact('labassistant'));
	}

	/**
	 * Show the form for creating a new labassistant
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
        $blood_group = BloodGroup::pluck("title","id");
        $hospital = Hospital::pluck('name', 'id');
        $lab = Lab::pluck('name', 'id');

	    return view('admin.labassistant.create', compact('blood_group','hospital','lab'));
	}

	/**
	 * Store a newly created labassistant in storage.
	 *
     * @param CreateLabAssistantRequest|Request $request
	 */
	public function store(CreateLabAssistantRequest $request)
	{
        $check = User::where("email", $request->email)->get();

        if ($check->count()){
            return redirect()->route(config('quickadmin.route').'.patient.create')
                ->with('warning', 'Duplicate Email Address!');
        }
        else{
            $la = LabAssistant::create($request->all());
            User::create([
                "role_id"=>5,
                "user_id"=>$la->id,
                "name"=>$la->name,
                "email"=>$request->email,
                "password"=>Hash::make($request->password)
            ]);

        }
	    
		LabAssistant::create($request->all());

		return redirect()->route(config('quickadmin.route').'.labassistant.index');
	}

	/**
	 * Show the form for editing the specified labassistant.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$labassistant = LabAssistant::find($id);
	    
	    
		return view('admin.labassistant.edit', compact('labassistant'));
	}

	/**
	 * Update the specified labassistant in storage.
     * @param UpdateLabAssistantRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateLabAssistantRequest $request)
	{
		$labassistant = LabAssistant::findOrFail($id);

        

		$labassistant->update($request->all());

		return redirect()->route(config('quickadmin.route').'.labassistant.index');
	}

	/**
	 * Remove the specified labassistant from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		LabAssistant::destroy($id);

		return redirect()->route(config('quickadmin.route').'.labassistant.index');
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
            LabAssistant::destroy($toDelete);
        } else {
            LabAssistant::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.labassistant.index');
    }

}
