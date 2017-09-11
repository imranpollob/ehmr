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
        </div>
    </div>

    {!! Form::open(array('files' => true, 'route' => 'store_doctor_prescription',
    'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}


    <div class="card">
        <div class="card-header">
            <h4 class="card-title" id="basic-layout-colored-form-control">Add New Prescription</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                </ul>
            </div>
        </div>


        <div class="card-block">
            <h4 class="form-section">Patient Information</h4>
            <div class="row">
                <div class="form-group">
                    {!! Form::label('patient_id', 'Patient*', array('class'=>'col-sm-2 control-label')) !!}
                    <div class="col-sm-4">
                        {!! Form::select('patient_id', $patient, old('patient_id'),
                        array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                    </div>

                    <div class="col-sm-4">
                        {!! link_to_route(config('quickadmin.route').'.patient.create', "Create new Patient" , null,
                        array('class' => 'btn btn-success btn-sm')) !!}
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group">
                    {!! Form::label('hospital_id', 'Hospital', array('class'=>'col-sm-2 control-label')) !!}
                    <div class="col-sm-4">
                        {!! Form::select('hospital_id', $hospital, old('hospital_id'),
                        array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                    </div>
                </div>

                <div class="form-group">
                    {!! Form::label('document_id', 'Document', array('class'=>'col-sm-2 control-label')) !!}
                    <div class="col-sm-4">
                        {!! Form::file('document_id') !!}

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group">
                    {!! Form::label('problems', 'Problems', array('class'=>'col-sm-2 control-label')) !!}
                    <div class="col-sm-4">
                        {!! Form::select('problems', $disease, old('problems'),
                        array('class'=>'form-control chosen', "multiple")) !!}

                    </div>
                </div>

                <div class="form-group">
                    {!! Form::label('note', 'Note', array('class'=>'col-sm-2 control-label')) !!}
                    <div class="col-sm-4">
                        {!! Form::text('note', old('note'), array('class'=>'form-control')) !!}

                    </div>
                </div>
            </div>


        </div>
    </div>




    <div class="panel panel-primary">
        <div class="panel-heading">
            <span class="panel-title">Medicine</span>
        </div>

        <div class="panel-body">

            <div class="form-group">
                {!! Form::label('medicine_id', 'Medicine', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-3">
                    {!! Form::Select('medicine_id', $medicine, old('medicine_id'),
                    array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                </div>

                {!! Form::label('schedule_id', 'Schedule', array('class'=>'col-sm-1 control-label')) !!}
                <div class="col-sm-3">
                    {!! Form::select('schedule_id', $medicine_schedule, old('schedule_id'),
                    array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                </div>

                {!! Form::label('days', 'Days', array('class'=>'col-sm-1 control-label')) !!}
                <div class="col-sm-1">
                    {!! Form::number('days', old('days'), array('class'=>'form-control')) !!}

                </div>
            </div>

            <div class="col-sm-offset-1">
                <button id="add_more_medicine" class="btn btn-primary text">Add More</button>

            </div>


        </div>
    </div>



    <div class="panel panel-primary">
        <div class="panel-heading">
            <span class="panel-title">Diagnosis</span>
        </div>

        <div class="panel-body diagnosis_div">
            <div class="form-group diagnosis_field">
                {!! Form::label('diagnosis_id', 'Diagnosis*', array('class'=>'col-sm-2 control-label')) !!}
                <div class="col-sm-9">
                    {!! Form::select('diagnosis_id', $diagnosis, old('diagnosis_id'),
                    array('class'=>'form-control', 'placeholder'=>'Please Select')) !!}

                </div>
            </div>

            <div class="col-sm-offset-1">
                <button id="add_more_diagnosis" class="btn btn-primary">Add More</button>
            </div>
        </div>

        {{ Form::hidden('invisible_id', 'secret', array('id' => 'invisible_id')) }}

        <br>
        <br>
        <br>

        <div class="form-group">
            <div class="col-sm-12 text-center">
                {!! Form::submit( trans('quickadmin::templates.templates-view_create-create') ,
                array('class' => 'btn btn-danger btn-lg create', 'id' => "create_btn")) !!}
            </div>
        </div>
        {!! Form::close() !!}

        @endsection

        @section('javascript')
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#add_more_medicine').click(function (e) {
                        e.preventDefault();


                        return false;
                    });

                    $('#add_more_diagnosis').click(function (e) {
                        e.preventDefault();

                        $('.diagnosis_div').append($('.diagnosis_field').html());


                        return false;
                    });


                    $("#create_btn").on("click", function () {
                        var id_qty = [];

                        $(".diagnosis_field").each(function () {

                            var id = $(this).closest('tr').find(".diagnosis_id").val();


                            id_qty.push({
                                "id": id
                            })

                        });

                        $('#invisible_id').val(JSON.stringify(id_qty)); //store array

                        console.log($("#invisible_id").val());

                        if (Object.keys(id_qty).length == 0) {
                            alert("No item is selected!");
                            return false;
                        }

                        return false;

                    });

                });
            </script>
@endsection