<?php

namespace App\Http\Controllers\Admin;

use App\BloodGroup;
use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\BloodBank;
use App\Http\Requests\CreateBloodBankRequest;
use App\Http\Requests\UpdateBloodBankRequest;
use Illuminate\Http\Request;



class BloodBankController extends Controller {

	/**
	 * Display a listing of bloodbank
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $bloodbank = BloodBank::all();

		return view('admin.bloodbank.index', compact('bloodbank'));
	}

	/**
	 * Show the form for creating a new bloodbank
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
        $blood_group = BloodGroup::pluck("title","id");
	    
	    return view('admin.bloodbank.create',compact('blood_group'));
	}

	/**
	 * Store a newly created bloodbank in storage.
	 *
     * @param CreateBloodBankRequest|Request $request
	 */
	public function store(CreateBloodBankRequest $request)
	{
	    
		BloodBank::create($request->all());

		return redirect()->route(config('quickadmin.route').'.bloodbank.index');
	}

	/**
	 * Show the form for editing the specified bloodbank.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$bloodbank = BloodBank::find($id);
	    
	    
		return view('admin.bloodbank.edit', compact('bloodbank'));
	}

	/**
	 * Update the specified bloodbank in storage.
     * @param UpdateBloodBankRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateBloodBankRequest $request)
	{
		$bloodbank = BloodBank::findOrFail($id);

        

		$bloodbank->update($request->all());

		return redirect()->route(config('quickadmin.route').'.bloodbank.index');
	}

	/**
	 * Remove the specified bloodbank from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		BloodBank::destroy($id);

		return redirect()->route(config('quickadmin.route').'.bloodbank.index');
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
            BloodBank::destroy($toDelete);
        } else {
            BloodBank::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.bloodbank.index');
    }

}
