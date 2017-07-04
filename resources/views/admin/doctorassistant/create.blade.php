@extends('admin.layouts.master')

@section('content')

    <div class="row">
        <div class="col-sm-10 col-sm-offset-2">
            <h1>{{ trans('quickadmin::templates.templates-view_create-add_new') }}</h1>

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                    </ul>
                </div>
            @endif
        </div>
    </div>

    {!! Form::open(array('route' => config('quickadmin.route').'.doctorassistant.store', 'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}

    <div class="form-group">
        {!! Form::label('name', 'Name*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('name', old('name'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('dob', 'Birthday*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('dob', old('dob'), array('class'=>'form-control datepicker')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('gender', 'Gender*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('gender', old('gender'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('is_married', 'Marital Status*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('is_married', old('is_married'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('mobile', 'Mobile*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('mobile', old('mobile'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('alt_mobile', 'Alt. Mobile', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('alt_mobile', old('alt_mobile'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('address', 'Address*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('address', old('address'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('blood_group', 'Blood Group*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('blood_group', old('blood_group'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('hospital_id', 'Hospital', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('hospital_id', old('hospital_id'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('doctor_id', 'Doctor*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('doctor_id', old('doctor_id'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('email', 'Email*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::email('email', old('email'), array('class'=>'form-control',"required")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('password', 'Password*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::password('password',  array('class'=>'form-control','required')) !!}

        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10 col-sm-offset-2">
            {!! Form::submit( trans('quickadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}
        </div>
    </div>

    {!! Form::close() !!}

@endsection