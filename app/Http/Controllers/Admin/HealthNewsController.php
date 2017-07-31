<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Redirect;
use Schema;
use App\HealthNews;
use App\Http\Requests\CreateHealthNewsRequest;
use App\Http\Requests\UpdateHealthNewsRequest;
use Illuminate\Http\Request;



class HealthNewsController extends Controller {

	/**
	 * Display a listing of healthnews
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $healthnews = HealthNews::all();

		return view('admin.healthnews.index', compact('healthnews'));
	}

	/**
	 * Show the form for creating a new healthnews
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.healthnews.create');
	}

	/**
	 * Store a newly created healthnews in storage.
	 *
     * @param CreateHealthNewsRequest|Request $request
	 */
	public function store(CreateHealthNewsRequest $request)
	{
	    $a = $request->all();
        $a['created_by'] = Auth::id();

		HealthNews::create($a);

		return redirect()->route(config('quickadmin.route').'.healthnews.index');
	}

	/**
	 * Show the form for editing the specified healthnews.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$healthnews = HealthNews::find($id);
	    
	    
		return view('admin.healthnews.edit', compact('healthnews'));
	}

	/**
	 * Update the specified healthnews in storage.
     * @param UpdateHealthNewsRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateHealthNewsRequest $request)
	{
		$healthnews = HealthNews::findOrFail($id);

        $a = $request->all();
        $a['updated_by'] = Auth::id();

		$healthnews->update($a);

		return redirect()->route(config('quickadmin.route').'.healthnews.index');
	}

	/**
	 * Remove the specified healthnews from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		HealthNews::destroy($id);

		return redirect()->route(config('quickadmin.route').'.healthnews.index');
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
            HealthNews::destroy($toDelete);
        } else {
            HealthNews::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.healthnews.index');
    }

}
