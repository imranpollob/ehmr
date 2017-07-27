<?php

namespace App\Http\Controllers\Admin;

use App\Approval;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PendingApprovalController extends Controller {

	/**
	 * Index page
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index()
    {
        $data = Approval::where('requested_user_id', Auth::id())
            ->where('is_approved', 0)
            ->get();
        $user = User::pluck('name','id');

		return view('admin.pendingapproval.index', compact('data','user'));
	}

    public function approve(Request $request)
    {
        $id = $request->request_id;

        $approval = Approval::findOrFail($id);
        $approval->update(['is_approved'=>1]);

        return  redirect()->route('admin.pendingapproval.index');
    }

    public function reject(Request $request)
    {
        $id = $request->invoice_id;

        return  redirect()->route('admin.pendingapproval.index');
    }

}