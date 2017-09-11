@extends('admin.layouts.master')

@section('style')
    <style>
        a:link, a:visited, a:hover, a:active {
            color: inherit;
        }
    </style>
@endsection

@section('content')


    <div class="row">

        @if ($bloodbank->count())

            @foreach ($bloodbank as $row)
                <div class="col-xl-3 col-lg-6 col-xs-12">
                    <a href="bloodbank/show/{{$row->id}}">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-block">
                                    <div class="media">
                                        <div class="media-body text-xs-left">
                                            <h3 class="green">{{ $row->title }}</h3>
                                        </div>
                                        <div class="media-right media-middle">
                                            <h4>{{ $row->count }}</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach

        @endif

    </div>


    <div class="text-xs-center">
        {!! link_to_route(config('quickadmin.route').'.bloodbank.create', trans('quickadmin::templates.templates-view_index-add_new') , null, array('class' => 'btn btn-default')) !!}
    </div>


@endsection
