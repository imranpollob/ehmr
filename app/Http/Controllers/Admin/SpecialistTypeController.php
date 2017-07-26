<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\SpecialistType;
use App\Http\Requests\CreateSpecialistTypeRequest;
use App\Http\Requests\UpdateSpecialistTypeRequest;
use Illuminate\Http\Request;



class SpecialistTypeController extends Controller {

	/**
	 * Display a listing of specialisttype
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $specialisttype = SpecialistType::all();

		return view('admin.specialisttype.index', compact('specialisttype'));
	}

	/**
	 * Show the form for creating a new specialisttype
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.specialisttype.create');
	}

	/**
	 * Store a newly created specialisttype in storage.
	 *
     * @param CreateSpecialistTypeRequest|Request $request
	 */
	public function store(CreateSpecialistTypeRequest $request)
	{
	    
		SpecialistType::create($request->all());

		return redirect()->route(config('quickadmin.route').'.specialisttype.index');
	}

	/**
	 * Show the form for editing the specified specialisttype.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$specialisttype = SpecialistType::find($id);
	    
	    
		return view('admin.specialisttype.edit', compact('specialisttype'));
	}

	/**
	 * Update the specified specialisttype in storage.
     * @param UpdateSpecialistTypeRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateSpecialistTypeRequest $request)
	{
		$specialisttype = SpecialistType::findOrFail($id);

        

		$specialisttype->update($request->all());

		return redirect()->route(config('quickadmin.route').'.specialisttype.index');
	}

	/**
	 * Remove the specified specialisttype from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		SpecialistType::destroy($id);

		return redirect()->route(config('quickadmin.route').'.specialisttype.index');
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
            SpecialistType::destroy($toDelete);
        } else {
            SpecialistType::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.specialisttype.index');
    }

}
