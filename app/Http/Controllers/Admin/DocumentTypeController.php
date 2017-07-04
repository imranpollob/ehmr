<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\DocumentType;
use App\Http\Requests\CreateDocumentTypeRequest;
use App\Http\Requests\UpdateDocumentTypeRequest;
use Illuminate\Http\Request;



class DocumentTypeController extends Controller {

	/**
	 * Display a listing of documenttype
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $documenttype = DocumentType::all();

		return view('admin.documenttype.index', compact('documenttype'));
	}

	/**
	 * Show the form for creating a new documenttype
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.documenttype.create');
	}

	/**
	 * Store a newly created documenttype in storage.
	 *
     * @param CreateDocumentTypeRequest|Request $request
	 */
	public function store(CreateDocumentTypeRequest $request)
	{
	    
		DocumentType::create($request->all());

		return redirect()->route(config('quickadmin.route').'.documenttype.index');
	}

	/**
	 * Show the form for editing the specified documenttype.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$documenttype = DocumentType::find($id);
	    
	    
		return view('admin.documenttype.edit', compact('documenttype'));
	}

	/**
	 * Update the specified documenttype in storage.
     * @param UpdateDocumentTypeRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDocumentTypeRequest $request)
	{
		$documenttype = DocumentType::findOrFail($id);

        

		$documenttype->update($request->all());

		return redirect()->route(config('quickadmin.route').'.documenttype.index');
	}

	/**
	 * Remove the specified documenttype from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		DocumentType::destroy($id);

		return redirect()->route(config('quickadmin.route').'.documenttype.index');
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
            DocumentType::destroy($toDelete);
        } else {
            DocumentType::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.documenttype.index');
    }

}
