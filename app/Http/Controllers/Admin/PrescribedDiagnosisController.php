<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\PrescribedDiagnosis;
use App\Http\Requests\CreatePrescribedDiagnosisRequest;
use App\Http\Requests\UpdatePrescribedDiagnosisRequest;
use Illuminate\Http\Request;



class PrescribedDiagnosisController extends Controller {

	/**
	 * Display a listing of prescribeddiagnosis
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $prescribeddiagnosis = PrescribedDiagnosis::all();

		return view('admin.prescribeddiagnosis.index', compact('prescribeddiagnosis'));
	}

	/**
	 * Show the form for creating a new prescribeddiagnosis
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.prescribeddiagnosis.create');
	}

	/**
	 * Store a newly created prescribeddiagnosis in storage.
	 *
     * @param CreatePrescribedDiagnosisRequest|Request $request
	 */
	public function store(CreatePrescribedDiagnosisRequest $request)
	{
	    
		PrescribedDiagnosis::create($request->all());

		return redirect()->route(config('quickadmin.route').'.prescribeddiagnosis.index');
	}

	/**
	 * Show the form for editing the specified prescribeddiagnosis.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$prescribeddiagnosis = PrescribedDiagnosis::find($id);
	    
	    
		return view('admin.prescribeddiagnosis.edit', compact('prescribeddiagnosis'));
	}

	/**
	 * Update the specified prescribeddiagnosis in storage.
     * @param UpdatePrescribedDiagnosisRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdatePrescribedDiagnosisRequest $request)
	{
		$prescribeddiagnosis = PrescribedDiagnosis::findOrFail($id);

        

		$prescribeddiagnosis->update($request->all());

		return redirect()->route(config('quickadmin.route').'.prescribeddiagnosis.index');
	}

	/**
	 * Remove the specified prescribeddiagnosis from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		PrescribedDiagnosis::destroy($id);

		return redirect()->route(config('quickadmin.route').'.prescribeddiagnosis.index');
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
            PrescribedDiagnosis::destroy($toDelete);
        } else {
            PrescribedDiagnosis::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.prescribeddiagnosis.index');
    }

}
