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

    <div class="row match-height">
        <div class="col-md-12">
            {!! Form::open(array('files' => true, 'route' => 'store_doctor_prescription',
            'id' => 'form-with-validation', 'class' => 'form-horizontal')) !!}


            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Add New Prescription</h4>
                </div>
                <div class="card-block">
                    <div class="row">
                        <div class="form-group">
                            {!! Form::label('patient_id', 'Patient*', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-4">
                                {!! Form::select('patient_id', $patient, old('patient_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            <div class="col-sm-4">
                                {!! link_to_route(config('quickadmin.route').'.patient.create', "Create new Patient" , null,
                                array('class' => 'btn btn-default btn-sm')) !!}
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
                                {!! Form::textarea('note', old('note'), array('class'=>'form-control', "rows"=>1)) !!}

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="row match-height">
        <div class="col-md-12">
            <div class="card">
                <div class="card-block">

                    <div class="row m1">
                        <div class="form-group">

                            {!! Form::label('medicine_id', 'Medicine', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-3">
                                {!! Form::Select('medicine_id1', $medicine, old('medicine_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            {!! Form::label('schedule_id', 'Schedule', array('class'=>'col-sm-1 control-label')) !!}
                            <div class="col-sm-3">
                                {!! Form::select('schedule_id1', $medicine_schedule, old('schedule_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            {!! Form::label('days', 'Days', array('class'=>'col-sm-1 control-label')) !!}
                            <div class="col-sm-1">
                                {!! Form::number('days1', old('days'), array('class'=>'form-control')) !!}

                            </div>

                        </div>
                    </div>
                    <div class="row m2">
                        <div class="form-group">

                            {!! Form::label('medicine_id', 'Medicine', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-3">
                                {!! Form::Select('medicine_id2', $medicine, old('medicine_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            {!! Form::label('schedule_id', 'Schedule', array('class'=>'col-sm-1 control-label')) !!}
                            <div class="col-sm-3">
                                {!! Form::select('schedule_id2', $medicine_schedule, old('schedule_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            {!! Form::label('days', 'Days', array('class'=>'col-sm-1 control-label')) !!}
                            <div class="col-sm-1">
                                {!! Form::number('days2', old('days'), array('class'=>'form-control')) !!}

                            </div>

                        </div>
                    </div>

                    <div class="row m3">
                        <div class="form-group">

                            {!! Form::label('medicine_id', 'Medicine', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-3">
                                {!! Form::Select('medicine_id3', $medicine, old('medicine_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            {!! Form::label('schedule_id', 'Schedule', array('class'=>'col-sm-1 control-label')) !!}
                            <div class="col-sm-3">
                                {!! Form::select('schedule_id3', $medicine_schedule, old('schedule_id'),
                                array('class'=>'form-control chosen', "placeholder"=>"Please Select")) !!}

                            </div>

                            {!! Form::label('days', 'Days', array('class'=>'col-sm-1 control-label')) !!}
                            <div class="col-sm-1">
                                {!! Form::number('days3', old('days'), array('class'=>'form-control')) !!}

                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <button id="add_more_medicine" class="btn btn-default text">Add More Medicine</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="row match-height">
        <div class="col-md-12">
            <div class="card">
                <div class="card-block">
                    <div class="row d1">
                        <div class="form-group">

                            {!! Form::label('diagnosis_id', 'Diagnosis', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-10">
                                {!! Form::select('diagnosis_id1', $diagnosis, old('diagnosis_id'),
                                array('class'=>'form-control chosen', 'placeholder'=>'Please Select')) !!}

                            </div>

                        </div>
                    </div>

                    <div class="row d2">
                        <div class="form-group">

                            {!! Form::label('diagnosis_id', 'Diagnosis', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-10">
                                {!! Form::select('diagnosis_id2', $diagnosis, old('diagnosis_id'),
                                array('class'=>'form-control chosen', 'placeholder'=>'Please Select')) !!}

                            </div>

                        </div>
                    </div>

                    <div class="row d3">
                        <div class="form-group">

                            {!! Form::label('diagnosis_id', 'Diagnosis', array('class'=>'col-sm-2 control-label')) !!}
                            <div class="col-sm-10">
                                {!! Form::select('diagnosis_id3', $diagnosis, old('diagnosis_id'),
                                array('class'=>'form-control chosen', 'placeholder'=>'Please Select')) !!}

                            </div>

                        </div>
                    </div>



                    <div class="row">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <button id="add_more_diagnosis" class="btn btn-default">Add More Diagnosis</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    {{ Form::hidden('invisible_id', 'secret', array('id' => 'invisible_id')) }}

    <div class="text-md-center">

        {!! Form::submit( trans('quickadmin::templates.templates-view_create-create'),array('class' => 'btn btn-default btn-lg create', 'id' => "create_btn")) !!}

    </div>

    {!! Form::close() !!}


@endsection

@section('javascript')
    <script type="text/javascript">
        $(document).ready(function () {

            $('.m2').hide();
            $('.m3').hide();

            $('.d2').hide();
            $('.d3').hide();

            $m=2;
            $d=2;

            $('#add_more_medicine').click(function (e) {
                e.preventDefault();

                $('.m'+$m).show();

                ++$m;

                return false;
            });

            $('#add_more_diagnosis').click(function (e) {
                e.preventDefault();


                $('.d'+$d).show();

                ++$d;

                return false;
            });


            $("#create_btn").on("click", function () {
//                var id_qty = [];
//
//                $(".diagnosis_field").each(function () {
//
//                    var id = $(this).closest('tr').find(".diagnosis_id").val();
//
//
//                    id_qty.push({
//                        "id": id
//                    })
//
//                });
//
//                $('#invisible_id').val(JSON.stringify(id_qty)); //store array
//
//                console.log($("#invisible_id").val());
//
//                if (Object.keys(id_qty).length == 0) {
//                    alert("No item is selected!");
//                    return false;
//                }

                return true;

            });

        });
    </script>
@endsection