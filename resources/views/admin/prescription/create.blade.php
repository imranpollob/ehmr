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

    {!! Form::open(array('files' => true, 'route' => config('quickadmin.route').'.prescription.store', 'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}

    <div class="form-group">
        {!! Form::label('patient_id', 'Patient*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('patient_id', $patient, old('patient_id'),
            array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('doctor_id', 'Doctor*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('doctor_id', $doctor, old('doctor_id'),
            array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('hospital_id', 'Hospital', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('hospital_id', $hospital, old('hospital_id'),
            array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('doctor_assistant_id', 'Doctor Assistant', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('doctor_assistant_id', $assistant, old('doctor_assistant_id'),
            array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('document_id', 'Document', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::file('document_id') !!}

        </div>
    </div>

    <div class="form-group">
        {!! Form::label('problems', 'Problems', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('problems', $disease, old('problems'), array('class'=>'form-control chosen', "multiple")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('note', 'Note', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('note', old('note'), array('class'=>'form-control')) !!}

        </div>
    </div>


    <div class="form-group">
        {!! Form::label('medicine_id', 'Medicine', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::Select('medicine_id', $medicine, old('medicine_id'), array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('schedule_id', 'Schedule*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('schedule_id', $medicine_schedule, old('schedule_id'), array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('days', 'Days*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::text('days', old('days'), array('class'=>'form-control')) !!}

        </div>
    </div>
    <div class="form-group">
        {!! Form::label('diagnosis_id', 'Diagnosis*', array('class'=>'col-sm-2 control-label')) !!}
        <div class="col-sm-10">
            {!! Form::select('diagnosis_id', $diagnosis, old('diagnosis_id'), array('class'=>'form-control chosen', 'placeholder'=>'Please Select')) !!}

        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-10 col-sm-offset-2">
            {!! Form::submit( trans('quickadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}
        </div>
    </div>

    {!! Form::close() !!}

@endsection