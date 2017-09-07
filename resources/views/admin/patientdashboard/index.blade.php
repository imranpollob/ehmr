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
                                <i class="icon-book blue font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Prescriptions</h3>
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
                                <i class="icon-books green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Lab Reports</h3>
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
                                <i class="icon-clock3 pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Medicine Schedule</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>

<div class="row">
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-medkit2 blue font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Lab Tests</h3>
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
                                <i class="icon-shield2 green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Vaccination</h3>
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
                                <i class="icon-bubbles4 pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Messages</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>

<div class="row">
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-news blue font-large-2 float-xs-left"></i>
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
                                <i class="icon-search4 green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Doctor Search</h3>
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
                                <i class="icon-credit-card pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>E-Health Card</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>

<div class="row">
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-droplet blue font-large-2 float-xs-left"></i>
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
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="#">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-checkmark22 green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Request Approval</h3>
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
                                <i class="icon-checkbox-checked pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Approved Doctors</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>


@endsection