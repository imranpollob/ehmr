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

{!! Form::model($testeditor, array('files' => true, 'class' => 'form-horizontal', 'id' => 'form-with-validation', 'method' => 'PATCH', 'route' => array(config('quickadmin.route').'.testeditor.update', $testeditor->id))) !!}

<div class="form-group">
    {!! Form::label('editor', 'editor', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::textarea('editor', old('editor',$testeditor->editor), array('class'=>'form-control ckeditor')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('file', 'file', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::file('file') !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('datetime', 'datetime', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('datetime', old('datetime',$testeditor->datetime), array('class'=>'form-control datetimepicker')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('photo', 'photo', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::file('photo') !!}
        {!! Form::hidden('photo_w', 4096) !!}
        {!! Form::hidden('photo_h', 4096) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('date', 'date', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('date', old('date',$testeditor->date), array('class'=>'form-control datepicker')) !!}
        
    </div>
</div><div class="form-group">
    {!! Form::label('money', 'money', array('class'=>'col-sm-2 control-label')) !!}
    <div class="col-sm-10">
        {!! Form::text('money', old('money',$testeditor->money), array('class'=>'form-control')) !!}
        
    </div>
</div>

<div class="form-group">
    <div class="col-sm-10 col-sm-offset-2">
      {!! Form::submit(trans('quickadmin::templates.templates-view_edit-update'), array('class' => 'btn btn-primary')) !!}
      {!! link_to_route(config('quickadmin.route').'.testeditor.index', trans('quickadmin::templates.templates-view_edit-cancel'), null, array('class' => 'btn btn-default')) !!}
    </div>
</div>

{!! Form::close() !!}

@endsection