<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class DoctorAssistantDashboardController extends Controller {

	/**
	 * Index page
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index()
    {
		return view('admin.doctorassistantdashboard.index');
	}

}