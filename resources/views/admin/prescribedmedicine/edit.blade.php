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

{!! Form::model($prescribedmedicine, array('class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.prescribedmedicine.update', $prescribedmedicine->id))) !!}

<div class="form-group">
    {!! Form::label('prescription_id', 'Prescription ID*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('prescription_id', old('prescription_id',$prescribedmedicine->prescription_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('medicine_id', 'Medicine ID*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('medicine_id', old('medicine_id',$prescribedmedicine->medicine_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('schedule_id', 'Schedule*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('schedule_id', old('schedule_id',$prescribedmedicine->schedule_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('days', 'Days*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('days', old('days',$prescribedmedicine->days), array('class'=>'form-control')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.prescribedmedicine.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection