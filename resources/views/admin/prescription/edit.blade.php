@extends('admin.layouts.master')

@section('content')

<div class="row">
    <div class="col-sm-10 col-sm-offset-2">
        <h1>{{ trans('quickadmin::templates.templates-view_edit-edit') }}</h1>

        @if ($errors->any())
        	<div class="alert alert-danger">
        	    <ul>
                    {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                </ul>
        	</div>
        @endif
    </div>
</div>

{!! Form::model($prescription, array('files' => true, 'class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.prescription.update', $prescription->id))) !!}

<div class="form-group">
    {!! Form::label('patient_id', 'Patient*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('patient_id', old('patient_id',$prescription->patient_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('doctor_id', 'Doctor*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('doctor_id', old('doctor_id',$prescription->doctor_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('hospital_id', 'Hospital', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('hospital_id', old('hospital_id',$prescription->hospital_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('doctor_assistant_id', 'Doctor Assistant', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('doctor_assistant_id', old('doctor_assistant_id',$prescription->doctor_assistant_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('document_id', 'Document', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::file('document_id') !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('created_by', 'Created by*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('created_by', old('created_by',$prescription->created_by), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('updated_by', 'Updated By', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('updated_by', old('updated_by',$prescription->updated_by), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('problems', 'Problems', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('problems', old('problems',$prescription->problems), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('note', 'Note', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('note', old('note',$prescription->note), array('class'=>'form-control')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.prescription.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection