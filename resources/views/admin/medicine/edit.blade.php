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

{!! Form::model($medicine, array('class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.medicine.update', $medicine->id))) !!}

<div class="form-group">
    {!! Form::label('drug_for', 'Drug For', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('drug_for', old('drug_for',$medicine->drug_for), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('drug_class', 'Drug Class*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('drug_class', old('drug_class',$medicine->drug_class), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('brand_name', 'Brand Name*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('brand_name', old('brand_name',$medicine->brand_name), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('contains', 'Contains*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('contains', old('contains',$medicine->contains), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('type', 'Type', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('type', old('type',$medicine->type), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('manufacturer', 'Manufacturer*', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('manufacturer', old('manufacturer',$medicine->manufacturer), array('class'=>'form-control')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('price', 'price', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('price', old('price',$medicine->price), array('class'=>'form-control')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.medicine.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection