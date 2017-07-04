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

{!! Form::model($doctor, array('class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.doctor.update', $doctor->id))) !!}

<div class="form-group">
    {!! Form::label('name', 'Name*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('name', old('name',$doctor->name), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('dob', 'Birthday*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('dob', old('dob',$doctor->dob), array('class'=>'form-control datepicker')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('gender', 'Gender*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('gender', old('gender',$doctor->gender), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('is_married', 'Marital Status*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('is_married', old('is_married',$doctor->is_married), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('mobile', 'Mobile*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('mobile', old('mobile',$doctor->mobile), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('alt_mobile', 'Alt. Mobile', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('alt_mobile', old('alt_mobile',$doctor->alt_mobile), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('address', 'Address', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('address', old('address',$doctor->address), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('blood_group', 'Blood Group*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('blood_group', old('blood_group',$doctor->blood_group), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('designation', 'Designation', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('designation', old('designation',$doctor->designation), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('degree', 'Degree', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('degree', old('degree',$doctor->degree), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('hospital_id', 'Hospital', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('hospital_id', old('hospital_id',$doctor->hospital_id), array('class'=>'form-control')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.doctor.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection