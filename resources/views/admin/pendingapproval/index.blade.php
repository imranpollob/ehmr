@extends('admin.layouts.master')

@section('content')

    <p>{!! link_to_route(config('quickadmin.route').'.approval.create', trans('quickadmin::templates.templates-view_index-add_new') , null, array('class' => 'btn btn-success')) !!}</p>


    @if ($data->count())
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">Pending Approval</div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover datatable" id="datatable">
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
                                {!! Form::open(["route"=>"approve_request", "method"=>"post"])  !!}
                                {!! Form::hidden("request_id", $row->id) !!}
                                {!! Form::submit("Approve", ["class"=>"btn btn-primary btn-sm"]) !!}

                                {!! Form::open(["route"=>"reject_request", "method"=>"post"])  !!}
                                {!! Form::hidden("request_id", $row->id) !!}
                                {!! Form::submit("Reject", ["class"=>"btn btn-danger btn-sm"]) !!}
                                {!! Form::close() !!}
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