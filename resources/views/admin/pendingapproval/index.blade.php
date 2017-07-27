@extends('admin.layouts.master')

@section('content')

    @if ($data->count())
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">Pending Approval</div>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-hover table-responsive datatable" id="datatable">
                    <thead>
                    <tr>
                        <th>Requested By</th>
                        <th>Approval Status</th>

                        <th>Action</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach ($data as $row)
                        <tr>
                            <td>{{ $user[$row->user_id] }}</td>

                            <td>
                                @if($row->is_approved == 0)
                                    Pending
                                @else
                                    Approved
                                @endif

                            </td>
                            <td>
                                <div class="col-md-6">
                                    {!! Form::open(["route"=>"approve_request", "method"=>"post"])  !!}
                                    {!! Form::hidden("request_id", $row->id) !!}
                                    {!! Form::submit("Approve", ["class"=>"btn btn-primary btn-sm"]) !!}
                                    {!! Form::close() !!}
                                </div>

                                <div class="col-md-6">
                                    {!! Form::open(["route"=>"reject_request", "method"=>"post"])  !!}
                                    {!! Form::hidden("request_id", $row->id) !!}
                                    {!! Form::submit("Reject", ["class"=>"btn btn-danger btn-sm"]) !!}
                                    {!! Form::close() !!}
                                </div>
                            </td>

                        </tr>
                    @endforeach
                    </tbody>
                </table>

            </div>
        </div>
    @else
        {{ trans('quickadmin::templates.templates-view_index-no_entries_found') }}
    @endif

@endsection