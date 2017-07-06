<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Diagnosis;
use App\Http\Requests\CreateDiagnosisRequest;
use App\Http\Requests\UpdateDiagnosisRequest;
use Illuminate\Http\Request;



class DiagnosisController extends Controller {

	/**
	 * Display a listing of diagnosis
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $diagnosis = Diagnosis::all();

		return view('admin.diagnosis.index', compact('diagnosis'));
	}

	/**
	 * Show the form for creating a new diagnosis
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.diagnosis.create');
	}

	/**
	 * Store a newly created diagnosis in storage.
	 *
     * @param CreateDiagnosisRequest|Request $request
	 */
	public function store(CreateDiagnosisRequest $request)
	{
	    
		Diagnosis::create($request->all());

		return redirect()->route(config('quickadmin.route').'.diagnosis.index');
	}

	/**
	 * Show the form for editing the specified diagnosis.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$diagnosis = Diagnosis::find($id);
	    
	    
		return view('admin.diagnosis.edit', compact('diagnosis'));
	}

	/**
	 * Update the specified diagnosis in storage.
     * @param UpdateDiagnosisRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDiagnosisRequest $request)
	{
		$diagnosis = Diagnosis::findOrFail($id);

        

		$diagnosis->update($request->all());

		return redirect()->route(config('quickadmin.route').'.diagnosis.index');
	}

	/**
	 * Remove the specified diagnosis from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Diagnosis::destroy($id);

		return redirect()->route(config('quickadmin.route').'.diagnosis.index');
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
            Diagnosis::destroy($toDelete);
        } else {
            Diagnosis::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.diagnosis.index');
    }

}
