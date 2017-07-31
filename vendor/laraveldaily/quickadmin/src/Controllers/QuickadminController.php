<?php
namespace Laraveldaily\Quickadmin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class QuickadminController extends Controller
{
    /**
     * Show QuickAdmin dashboard page
     *
     * @return Response
     */
    public function index()
    {
        $role_id = Auth::user()->role_id;

        if ($role_id == 1){
            return view('admin.dashboard');

        }else if ($role_id == 2){
            return view('admin.patientdashboard.index');

        }else if ($role_id == 3){
            return view('admin.doctordashboard.index');

        }else if ($role_id == 4){
            return view('admin.hospitalassistantdashboard.index');

        }else if ($role_id == 5){
            return view('admin.labassistantdashboard.index');

        }else if ($role_id == 6){
            return view('admin.doctorassistantdashboard.index');

        }

    }
}