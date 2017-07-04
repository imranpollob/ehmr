<?php

namespace App\Http\Controllers\Admin;

use App\DocumentType;
use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Document;
use App\Http\Requests\CreateDocumentRequest;
use App\Http\Requests\UpdateDocumentRequest;
use Illuminate\Http\Request;



class DocumentController extends Controller {

	/**
	 * Display a listing of document
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $document = Document::all();

		return view('admin.document.index', compact('document'));
	}

	/**
	 * Show the form for creating a new document
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    $document_type = DocumentType::pluck("title", "id");
	    
	    return view('admin.document.create', compact("document_type"));
	}

	/**
	 * Store a newly created document in storage.
	 *
     * @param CreateDocumentRequest|Request $request
	 */
	public function store(CreateDocumentRequest $request)
	{
	    
		Document::create($request->all());

		return redirect()->route(config('quickadmin.route').'.document.index');
	}

	/**
	 * Show the form for editing the specified document.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$document = Document::find($id);
	    
	    
		return view('admin.document.edit', compact('document'));
	}

	/**
	 * Update the specified document in storage.
     * @param UpdateDocumentRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateDocumentRequest $request)
	{
		$document = Document::findOrFail($id);

        

		$document->update($request->all());

		return redirect()->route(config('quickadmin.route').'.document.index');
	}

	/**
	 * Remove the specified document from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Document::destroy($id);

		return redirect()->route(config('quickadmin.route').'.document.index');
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
            Document::destroy($toDelete);
        } else {
            Document::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.document.index');
    }

}
