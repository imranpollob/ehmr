<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Redirect;
use Schema;
use App\Message;
use App\Http\Requests\CreateMessageRequest;
use App\Http\Requests\UpdateMessageRequest;
use Illuminate\Http\Request;



class MessageController extends Controller {

	/**
	 * Display a listing of message
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $message = Message::all();
        $user = User::pluck('name', 'id');

		return view('admin.message.index', compact('message','user'));
	}

	/**
	 * Show the form for creating a new message
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $user = User::pluck('name','id');
	    
	    return view('admin.message.create', compact('user'));
	}

	/**
	 * Store a newly created message in storage.
	 *
     * @param CreateMessageRequest|Request $request
	 */
	public function store(CreateMessageRequest $request)
	{
	    $a = $request->all();
	    $a['sender_id'] = Auth::id();

		Message::create($a);

		return redirect()->route(config('quickadmin.route').'.message.index');
	}

	/**
	 * Show the form for editing the specified message.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$message = Message::find($id);
	    
	    
		return view('admin.message.edit', compact('message'));
	}

	/**
	 * Update the specified message in storage.
     * @param UpdateMessageRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateMessageRequest $request)
	{
		$message = Message::findOrFail($id);

        

		$message->update($request->all());

		return redirect()->route(config('quickadmin.route').'.message.index');
	}

	/**
	 * Remove the specified message from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Message::destroy($id);

		return redirect()->route(config('quickadmin.route').'.message.index');
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
            Message::destroy($toDelete);
        } else {
            Message::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.message.index');
    }

}
