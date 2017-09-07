@extends('admin.layouts.master')

@section('content')

@if ($medicine->count())
<div class="col-xs-12">
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Hoverable rows</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                    <li><a data-action="close"><i class="icon-cross2"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="card-body collapse in">
            <div class="table-responsive">
                <table class="table table-hover .table-responsive mb-0">
                    <thead>
                        <tr>
                            <th>{!! Form::checkbox('delete_all',1,false,['class' => 'mass']) !!}</th>
                            <th>Drug For</th>
                            <th>Drug Class</th>
                            <th>Brand Name</th>
                            <th>Contains</th>
                            <th>Type</th>
                            <th>Manufacturer</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($medicine as $row)
                    <tr>
                        <td>
                            {!! Form::checkbox('del-'.$row->id,1,false,['class' => 'single','data-id'=> $row->id]) !!}
                        </td>
                        <td>{{ $row->drug_for }}</td>
                        <td>{{ $row->drug_class }}</td>
                        <td>{{ $row->brand_name }}</td>
                        <td>{{ $row->contains }}</td>
                        <td>{{ $row->type }}</td>
                        <td>{{ $row->manufacturer }}</td>

                        <td>
                            {!! link_to_route(config('quickadmin.route').'.medicine.edit', trans('quickadmin::templates.templates-view_index-edit'), array($row->id), array('class' => 'btn btn-xs btn-info')) !!}
                            {!! Form::open(array('style' => 'display: inline-block;', 'method' => 'DELETE', 'onsubmit' => "return confirm('".trans("quickadmin::templates.templates-view_index-are_you_sure")."');",  'route' => array(config('quickadmin.route').'.medicine.destroy', $row->id))) !!}
                            {!! Form::submit(trans('quickadmin::templates.templates-view_index-delete'), array('class' => 'btn btn-xs btn-danger')) !!}
                            {!! Form::close() !!}
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

{{ $medicine->links() }}

@else
    {{ trans('quickadmin::templates.templates-view_index-no_entries_found') }}
@endif
    
<p>{!! link_to_route(config('quickadmin.route').'.medicine.create', trans('quickadmin::templates.templates-view_index-add_new') , null, array('class' => 'btn btn-success')) !!}</p>

@if ($medicine->count())
    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">{{ trans('quickadmin::templates.templates-view_index-list') }}</div>
        </div>
        <div class="portlet-body">
            <table class="table table-striped table-hover table-responsive datatable" id="datatable">
                <thead>
                    <tr>
                        <th>
                            {!! Form::checkbox('delete_all',1,false,['class' => 'mass']) !!}
                        </th>
                        <th>Drug For</th>
                        <th>Drug Class</th>
                        <th>Brand Name</th>
                        <th>Contains</th>
                        <th>Type</th>
                        <th>Manufacturer</th>
                        <th>price</th>

                        <th>&nbsp;</th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($medicine as $row)
                        <tr>
                            <td>
                                {!! Form::checkbox('del-'.$row->id,1,false,['class' => 'single','data-id'=> $row->id]) !!}
                            </td>
                            <td>{{ $row->drug_for }}</td>
                            <td>{{ $row->drug_class }}</td>
                            <td>{{ $row->brand_name }}</td>
                            <td>{{ $row->contains }}</td>
                            <td>{{ $row->type }}</td>
                            <td>{{ $row->manufacturer }}</td>
                            <td>{{ $row->price }}</td>

                            <td>
                                {!! link_to_route(config('quickadmin.route').'.medicine.edit', trans('quickadmin::templates.templates-view_index-edit'), array($row->id), array('class' => 'btn btn-xs btn-info')) !!}
                                {!! Form::open(array('style' => 'display: inline-block;', 'method' => 'DELETE', 'onsubmit' => "return confirm('".trans("quickadmin::templates.templates-view_index-are_you_sure")."');",  'route' => array(config('quickadmin.route').'.medicine.destroy', $row->id))) !!}
                                {!! Form::submit(trans('quickadmin::templates.templates-view_index-delete'), array('class' => 'btn btn-xs btn-danger')) !!}
                                {!! Form::close() !!}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="row">
                <div class="col-xs-12">
                    <button class="btn btn-danger" id="delete">
                        {{ trans('quickadmin::templates.templates-view_index-delete_checked') }}
                    </button>
                </div>
            </div>
            {!! Form::open(['route' => config('quickadmin.route').'.medicine.massDelete', 'method' => 'post', 'id' => 'massDelete']) !!}
                <input type="hidden" id="send" name="toDelete">
            {!! Form::close() !!}
        </div>
    </div>
    
    {{ $medicine->links() }}
@else
    {{ trans('quickadmin::templates.templates-view_index-no_entries_found') }}
@endif

@endsection

@section('javascript')
    <script>
        $(document).ready(function () {
            $('#delete').click(function () {
                if (window.confirm('{{ trans('quickadmin::templates.templates-view_index-are_you_sure') }}')) {
                    var send = $('#send');
                    var mass = $('.mass').is(":checked");
                    if (mass == true) {
                        send.val('mass');
                    } else {
                        var toDelete = [];
                        $('.single').each(function () {
                            if ($(this).is(":checked")) {
                                toDelete.push($(this).data('id'));
                            }
                        });
                        send.val(JSON.stringify(toDelete));
                    }
                    $('#massDelete').submit();
                }
            });
        });
    </script>
@stop