<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Approval;
use App\Http\Requests\CreateApprovalRequest;
use App\Http\Requests\UpdateApprovalRequest;
use Illuminate\Http\Request;



class ApprovalController extends Controller {

	/**
	 * Display a listing of approval
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $approval = Approval::all();

		return view('admin.approval.index', compact('approval'));
	}

	/**
	 * Show the form for creating a new approval
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.approval.create');
	}

	/**
	 * Store a newly created approval in storage.
	 *
     * @param CreateApprovalRequest|Request $request
	 */
	public function store(CreateApprovalRequest $request)
	{
	    
		Approval::create($request->all());

		return redirect()->route(config('quickadmin.route').'.approval.index');
	}

	/**
	 * Show the form for editing the specified approval.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$approval = Approval::find($id);
	    
	    
		return view('admin.approval.edit', compact('approval'));
	}

	/**
	 * Update the specified approval in storage.
     * @param UpdateApprovalRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateApprovalRequest $request)
	{
		$approval = Approval::findOrFail($id);

        

		$approval->update($request->all());

		return redirect()->route(config('quickadmin.route').'.approval.index');
	}

	/**
	 * Remove the specified approval from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Approval::destroy($id);

		return redirect()->route(config('quickadmin.route').'.approval.index');
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
            Approval::destroy($toDelete);
        } else {
            Approval::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.approval.index');
    }

}
