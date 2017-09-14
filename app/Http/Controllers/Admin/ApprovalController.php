<?php

namespace App\Http\Controllers\Admin;

use App\Doctor;
use App\Http\Controllers\Controller;
use App\Patient;
use App\User;
use Illuminate\Support\Facades\Auth;
use Redirect;
use Schema;
use App\Approval;
use App\Http\Requests\CreateApprovalRequest;
use App\Http\Requests\UpdateApprovalRequest;
use Illuminate\Http\Request;


class ApprovalController extends Controller
{

    /**
     * Display a listing of approval
     *
     * @param Request $request
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $approval = Approval::where('user_id', Auth::id())->get();

        return view('admin.approval.index', compact('approval', 'data'));
    }

    /**
     * Show the form for creating a new approval
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        if (Auth::user()->role_id == 2) { //patient
            $data = Doctor::pluck('name', 'id');
        } else if (Auth::user()->role_id == 3) { //doctor
            $data = Patient::pluck('name', 'id');
        } else {
            $data = Doctor::pluck('name', 'id');
        }

        return view('admin.approval.create', compact('data'));
    }

    /**
     * Store a newly created approval in storage.
     *
     * @param CreateApprovalRequest|Request $request
     */
    public function store(CreateApprovalRequest $request)
    {
        if (Auth::user()->role_id == 2) {
            $searched_id = User::select('id')
                ->where('role_id', 3)
                ->where('user_id', $request->requested_user_id)
                ->first()->id;
        }

        else if (Auth::user()->role_id == 3) {
            $searched_id = User::select('id')
                ->where('role_id', 2)
                ->where('user_id', $request->requested_user_id)
                ->first()->id;
        }


        $condition = Approval::where('user_id', Auth::id())
            ->where('requested_user_id', $searched_id)
            ->get();

        if (count($condition) < 1) {
            Approval::create([
                'user_id' => Auth::id(),
                'requested_user_id' => $searched_id,
                'is_approved' => 0

            ]);
        }


        return redirect()->route(config('quickadmin.route') . '.approval.index');
    }

    /**
     * Show the form for editing the specified approval.
     *
     * @param  int $id
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
     * @param  int $id
     */
    public function update($id, UpdateApprovalRequest $request)
    {
        $approval = Approval::findOrFail($id);


        $approval->update($request->all());

        return redirect()->route(config('quickadmin.route') . '.approval.index');
    }

    /**
     * Remove the specified approval from storage.
     *
     * @param  int $id
     */
    public function destroy($id)
    {
        Approval::destroy($id);

        return redirect()->route(config('quickadmin.route') . '.approval.index');
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

        return redirect()->route(config('quickadmin.route') . '.approval.index');
    }

}
