@extends('admin.layouts.master')

@section('content')

    <p>{!! link_to_route(config('quickadmin.route').'.approval.create', trans('quickadmin::templates.templates-view_index-add_new') , null, array('class' => 'btn btn-success')) !!}</p>

    @if ($approval->count())
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">{{ trans('quickadmin::templates.templates-view_index-list') }}</div>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-hover table-responsive datatable" id="datatable">
                    <thead>
                    <tr>
                        <th>Requested To</th>
                        <th>Approval Status</th>
                    </tr>
                    </thead>

                    <tbody>
                    @foreach ($approval as $row)
                        <tr>
                            <td>{{ $row->requested_user_id }}</td>

                            <td>
                                @if($row->is_approved == 0)
                                    Pending
                                @else
                                    Approved
                                @endif

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