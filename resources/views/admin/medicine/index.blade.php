@extends('admin.layouts.master')

@section('content')

    @if ($medicine->count())
        <div class="row">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Medicines</h4>
                    <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-hover table-responsive">
                        <thead>
                        <tr>
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

        {{ $medicine->links() }}

    @else
        {{ trans('quickadmin::templates.templates-view_index-no_entries_found') }}
    @endif

    <div class="text-md-center">{!! link_to_route(config('quickadmin.route').'.medicine.create', trans('quickadmin::templates.templates-view_index-add_new') , null, array('class' => 'btn btn-default')) !!}</div>


@endsection
