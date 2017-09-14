<?php

namespace App\Http\Controllers\Admin;

use App\Doctor;
use App\DoctorAssistant;
use App\HospitalAssistant;
use App\Http\Controllers\Controller;
use App\LabAssistant;
use App\Patient;
use Illuminate\Support\Facades\Auth;

class MyProfileController extends Controller
{

    /**
     * Index page
     *
     * @param Request $request
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $role_id = Auth::user()->role_id;
        $user_id = Auth::user()->user_id;
        $user = "";

        if ($role_id == 1) {

            echo Auth::user();

        } else if ($role_id == 2) { // patient

            $user = Patient::find($user_id);



        } else if ($role_id == 3) { // doctor

            $user = Doctor::find($user_id);

        } else if ($role_id == 4) { // hospital assistant

            $user = HospitalAssistant::find($user_id);

        } else if ($role_id == 5) { // lab assistant

            $user = LabAssistant::find($user_id);

        } else if ($role_id == 6) { // doctor assistant

            $user = DoctorAssistant::find($user_id);

        }

//        echo $user;
        $obj = json_decode($user, TRUE);

        foreach($obj as $key => $value)
        {
            echo $key.'  '.$value."<br>";
        }


//		return view('admin.myprofile.index');
    }

}