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

{!! Form::model($prescribeddiagnosis, array('class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.prescribeddiagnosis.update', $prescribeddiagnosis->id))) !!}

<div class="form-group">
    {!! Form::label('prescription_id', 'Prescription*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('prescription_id', old('prescription_id',$prescribeddiagnosis->prescription_id), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('diagnosis_id', 'Diagnosis*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('diagnosis_id', old('diagnosis_id',$prescribeddiagnosis->diagnosis_id), array('class'=>'form-control')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.prescribeddiagnosis.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection