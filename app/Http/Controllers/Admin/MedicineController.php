<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Medicine;
use App\Http\Requests\CreateMedicineRequest;
use App\Http\Requests\UpdateMedicineRequest;
use Illuminate\Http\Request;



class MedicineController extends Controller {

	/**
	 * Display a listing of medicine
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $medicine = Medicine::paginate(10);

		return view('admin.medicine.index', compact('medicine'));
	}

	/**
	 * Show the form for creating a new medicine
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.medicine.create');
	}

	/**
	 * Store a newly created medicine in storage.
	 *
     * @param CreateMedicineRequest|Request $request
	 */
	public function store(CreateMedicineRequest $request)
	{
	    
		Medicine::create($request->all());

		return redirect()->route(config('quickadmin.route').'.medicine.index');
	}

	/**
	 * Show the form for editing the specified medicine.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$medicine = Medicine::find($id);
	    
	    
		return view('admin.medicine.edit', compact('medicine'));
	}

	/**
	 * Update the specified medicine in storage.
     * @param UpdateMedicineRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateMedicineRequest $request)
	{
		$medicine = Medicine::findOrFail($id);

        

		$medicine->update($request->all());

		return redirect()->route(config('quickadmin.route').'.medicine.index');
	}

	/**
	 * Remove the specified medicine from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Medicine::destroy($id);

		return redirect()->route(config('quickadmin.route').'.medicine.index');
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
            Medicine::destroy($toDelete);
        } else {
            Medicine::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.medicine.index');
    }

}
