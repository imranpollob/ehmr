@extends('admin.layouts.master')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body collapse in">
                    <div class="card-block">
                        {!! Form::open(array('route' => config('quickadmin.route').'.bloodbank.store', 'id' => 'form-with-validation', 'class' => 'form')) !!}

                        <div class="form-body">
                                <h4 class="form-section"><i class="icon-setting1"></i>Manage Blood</h4>
                                @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            {!! implode('', $errors->all('<li class="error">:message</li>')) !!}
                                        </ul>
                                    </div>
                                @endif
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            {!! Form::label('blood_group', 'Blood Group*', array('class'=>' control-label')) !!}

                                            {!! Form::select('blood_group', $blood_group, old('blood_group'),
                                            array('class'=>'form-control', 'placeholder'=>'Please Select', 'required')) !!}
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form group">
                                            {!! Form::label('count', 'Add/Delete No. of Bags*', array('class'=>'control-label')) !!}

                                            {!! Form::number('count', old('count'), array('class'=>'form-control',"required", "step"=>1)) !!}
                                        </div>
                                    </div>
                                </div>

                                <div class="row text-xs-center">

                                    {!! Form::submit( trans('quickadmin::templates.templates-view_create-create') , array('class' => 'btn btn-primary')) !!}

                                </div>
                            </div>
                        {!! Form::close() !!}

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection