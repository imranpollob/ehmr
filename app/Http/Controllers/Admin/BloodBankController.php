<?php

namespace App\Http\Controllers\Admin;

use App\BloodGroup;
use App\Hospital;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Redirect;
use Schema;
use App\BloodBank;
use App\Http\Requests\CreateBloodBankRequest;
use App\Http\Requests\UpdateBloodBankRequest;
use Illuminate\Http\Request;



class BloodBankController extends Controller {

    function dump($id){
        echo $id;
        die();
    }
	/**
	 * Display a listing of bloodbank
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {


        $bloodbank = BloodBank::select('hospital.name as hospital',
            'bloodgroup.title as blood_group',
            DB::raw('SUM(count) as count'))
            ->leftJoin('hospital','hospital_id', '=', 'hospital.id')
            ->leftJoin('bloodgroup','blood_group', '=', 'bloodgroup.id')
            ->groupBy('hospital.name','bloodgroup.title')
            ->get();

        $bloodbank = BloodBank::select('bloodgroup.id as id',
            'bloodgroup.title',
            DB::raw('sum(count) as count'))
            ->leftJoin('bloodgroup','blood_group', '=', 'bloodgroup.id')
            ->groupBy('bloodgroup.id')
            ->get();


		return view('admin.bloodbank.index', compact('bloodbank'));
	}

	/**
	 * Show the form for creating a new bloodbank
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
        $hospital = Hospital::pluck('name', 'id');
        $blood_group = BloodGroup::pluck("title","id");
	    
	    return view('admin.bloodbank.create',compact('blood_group','hospital'));
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

    public function show($id)
    {
        $bloodbank = BloodBank::select('hospital.name as hospital',
            DB::raw('SUM(count) as count'))
            ->leftJoin('hospital','hospital_id', '=', 'hospital.id')
            ->where('blood_group','=',$id)
            ->groupBy('hospital.name')
            ->get();
        $bloodgroup = BloodGroup::find($id)->title;

        return view('admin.bloodbank.show', compact('bloodbank','bloodgroup'));

    }

}
