@extends('admin.layouts.master')

@section('style')
    <style>
        a:link, a:visited, a:hover, a:active {
            color: inherit;
        }

        h3{
            padding: 10px;
        }
    </style>
@endsection


@section('content')

<div class="row">
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-pencil blue font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>New Lab Report</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-trending_up green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Health News</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-map1 pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Blood Bank</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>

@endsection