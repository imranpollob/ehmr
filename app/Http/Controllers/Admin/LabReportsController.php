<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Patient;
use Redirect;
use Schema;
use App\LabReports;
use App\Http\Requests\CreateLabReportsRequest;
use App\Http\Requests\UpdateLabReportsRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;


class LabReportsController extends Controller {

	/**
	 * Display a listing of labreports
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $labreports = LabReports::all();

		return view('admin.labreports.index', compact('labreports'));
	}

	/**
	 * Show the form for creating a new labreports
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $patient = Patient::pluck('name', 'id');
	    
	    return view('admin.labreports.create', compact('patient'));
	}

	/**
	 * Store a newly created labreports in storage.
	 *
     * @param CreateLabReportsRequest|Request $request
	 */
	public function store(CreateLabReportsRequest $request)
	{
	    $request = $this->saveFiles($request);
		LabReports::create($request->all());

		return redirect()->route(config('quickadmin.route').'.labreports.index');
	}

	/**
	 * Show the form for editing the specified labreports.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$labreports = LabReports::find($id);
	    
	    
		return view('admin.labreports.edit', compact('labreports'));
	}

	/**
	 * Update the specified labreports in storage.
     * @param UpdateLabReportsRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateLabReportsRequest $request)
	{
		$labreports = LabReports::findOrFail($id);

        $request = $this->saveFiles($request);

		$labreports->update($request->all());

		return redirect()->route(config('quickadmin.route').'.labreports.index');
	}

	/**
	 * Remove the specified labreports from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		LabReports::destroy($id);

		return redirect()->route(config('quickadmin.route').'.labreports.index');
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
            LabReports::destroy($toDelete);
        } else {
            LabReports::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.labreports.index');
    }

}
