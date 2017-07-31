<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

class LabAssistantDashboardController extends Controller {

	/**
	 * Index page
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index()
    {
		return view('admin.labassistantdashboard.index');
	}

}