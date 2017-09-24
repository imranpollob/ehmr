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
        <a href="{{ route('admin.doctorsprescription.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-pencil22 blue font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>New Prescription</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.doctorassistant.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-user-tie green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>My Assistants</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.patient.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-users2 pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Patients</h3>
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
        <a href="{{ route('admin.pendingapproval.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-checkmark22 blue font-large-2 float-xs-left"></i>
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
        <a href="{{ route('admin.message.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-bubbles4 green font-large-2 float-xs-left"></i>
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
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.bloodbank.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-droplet pink font-large-2 float-xs-left"></i>
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

<div class="row">
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.medicine.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-lifebuoy blue font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Medicines</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.diagnosis.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-lab green font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Diagnosis</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.diseases.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-heart-broken2 pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Diseases</h3>
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
        <a href="{{ route('admin.vaccine.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-shield2 blue font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>Vaccines</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>

    <div class="col-xl-4 col-lg-6 col-xs-12">
        <a href="{{ route('admin.healthnews.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-news green font-large-2 float-xs-left"></i>
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
        <a href="{{ route('admin.approval.index') }}">
            <div class="card">
                <div class="card-body">
                    <div class="card-block">
                        <div class="media">
                            <div class="media-left media-middle">
                                <i class="icon-checkmark pink font-large-2 float-xs-left"></i>
                            </div>
                            <div class="media-body text-xs-right">
                                <h3>New Request</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>

@endsection