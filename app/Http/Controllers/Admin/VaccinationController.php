<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class VaccinationController extends Controller {

	/**
	 * Index page
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
    public function index()
    {
        return view('admin.vaccination.index');
    }

    public function create()
    {
        return view('admin.vaccination.create');
    }

    public function vaccines()
    {
        return view('admin.vaccination.vaccines');
    }

    public function single_vaccine()
    {
        return view('admin.vaccination.single_vaccine');
    }

}