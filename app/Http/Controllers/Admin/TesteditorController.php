<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Testeditor;
use App\Http\Requests\CreateTesteditorRequest;
use App\Http\Requests\UpdateTesteditorRequest;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\FileUploadTrait;


class TesteditorController extends Controller {

	/**
	 * Display a listing of testeditor
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $testeditor = Testeditor::all();

		return view('admin.testeditor.index', compact('testeditor'));
	}

	/**
	 * Show the form for creating a new testeditor
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.testeditor.create');
	}

	/**
	 * Store a newly created testeditor in storage.
	 *
     * @param CreateTesteditorRequest|Request $request
	 */
	public function store(CreateTesteditorRequest $request)
	{
	    $request = $this->saveFiles($request);
		Testeditor::create($request->all());

		return redirect()->route(config('quickadmin.route').'.testeditor.index');
	}

	/**
	 * Show the form for editing the specified testeditor.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$testeditor = Testeditor::find($id);
	    
	    
		return view('admin.testeditor.edit', compact('testeditor'));
	}

	/**
	 * Update the specified testeditor in storage.
     * @param UpdateTesteditorRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateTesteditorRequest $request)
	{
		$testeditor = Testeditor::findOrFail($id);

        $request = $this->saveFiles($request);

		$testeditor->update($request->all());

		return redirect()->route(config('quickadmin.route').'.testeditor.index');
	}

	/**
	 * Remove the specified testeditor from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Testeditor::destroy($id);

		return redirect()->route(config('quickadmin.route').'.testeditor.index');
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
            Testeditor::destroy($toDelete);
        } else {
            Testeditor::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.testeditor.index');
    }

}
