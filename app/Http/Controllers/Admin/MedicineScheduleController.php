<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\MedicineSchedule;
use App\Http\Requests\CreateMedicineScheduleRequest;
use App\Http\Requests\UpdateMedicineScheduleRequest;
use Illuminate\Http\Request;



class MedicineScheduleController extends Controller {

	/**
	 * Display a listing of medicineschedule
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $medicineschedule = MedicineSchedule::all();

		return view('admin.medicineschedule.index', compact('medicineschedule'));
	}

	/**
	 * Show the form for creating a new medicineschedule
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.medicineschedule.create');
	}

	/**
	 * Store a newly created medicineschedule in storage.
	 *
     * @param CreateMedicineScheduleRequest|Request $request
	 */
	public function store(CreateMedicineScheduleRequest $request)
	{
	    
		MedicineSchedule::create($request->all());

		return redirect()->route(config('quickadmin.route').'.medicineschedule.index');
	}

	/**
	 * Show the form for editing the specified medicineschedule.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$medicineschedule = MedicineSchedule::find($id);
	    
	    
		return view('admin.medicineschedule.edit', compact('medicineschedule'));
	}

	/**
	 * Update the specified medicineschedule in storage.
     * @param UpdateMedicineScheduleRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateMedicineScheduleRequest $request)
	{
		$medicineschedule = MedicineSchedule::findOrFail($id);

        

		$medicineschedule->update($request->all());

		return redirect()->route(config('quickadmin.route').'.medicineschedule.index');
	}

	/**
	 * Remove the specified medicineschedule from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		MedicineSchedule::destroy($id);

		return redirect()->route(config('quickadmin.route').'.medicineschedule.index');
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
            MedicineSchedule::destroy($toDelete);
        } else {
            MedicineSchedule::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.medicineschedule.index');
    }

}
