@extends('admin.layouts.master')

@section('content')

    <div class="row">
        <div class="col-sm-10 col-sm-offset-2">

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                    </ul>
                </div>
            @endif
            @if(session()->has('warning'))
                <div class="alert alert-danger">
                    {!! session()->get('warning') !!}

                </div>
            @endif
        </div>
    </div>



    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Add New Doctor Assistant</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="card-block">
            {!! Form::open(array('route' => config('quickadmin.route').'.doctorassistant.store', 'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}

            <div class="row form-group">
                {!! Form::label('name', 'Name*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::text('name', old('name'), array('class'=>'form-control')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('dob', 'Birthday*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::text('dob', old('dob'), array('class'=>'form-control datepicker')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('gender', 'Gender*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    <label class="radio-inline">
                        {!! Form::radio('gender', '1', false, ['required']) !!} Male
                    </label>
                    <label class="radio-inline">
                        {!! Form::radio('gender', '2') !!} Female
                    </label>
                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('is_married', 'Marital Status*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    <label class="radio-inline">
                        {!! Form::radio('is_married', "1", false, ['required']) !!} Married
                    </label>
                    <label class="radio-inline">
                        {!! Form::radio('is_married', "2") !!} Unmarried
                    </label>
                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('mobile', 'Mobile*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::number('mobile', old('mobile'), array('class'=>'form-control')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('alt_mobile', 'Alt. Mobile', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::number('alt_mobile', old('alt_mobile'), array('class'=>'form-control')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('address', 'Address*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::text('address', old('address'), array('class'=>'form-control')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('blood_group', 'Blood Group*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::select('blood_group', $blood_group, old('blood_group'),
                    array('class'=>'form-control chosen', 'placeholder'=>'Please Select')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('hospital_id', 'Hospital', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::select('hospital_id', $hospital, old('hospital_id'),
                    array('class'=>'form-control chosen', 'placeholder'=>'Please Select')) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('doctor_id', 'Doctor*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::select('doctor_id', $doctor, old('doctor_id'),
                    array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('email', 'Email*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::email('email', old('email'), array('class'=>'form-control',"required")) !!}

                </div>
            </div>
            <div class="row form-group">
                {!! Form::label('password', 'Password*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-10">
                    {!! Form::password('password',  array('class'=>'form-control','required')) !!}

                </div>
            </div>
            <div class="row form-group">
                <div class="col-sm-10 col-sm-offset-2">
                    {!! Form::submit( trans('quickadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}
                </div>
            </div>
        </div>
    </div>

    {!! Form::close() !!}

@endsection