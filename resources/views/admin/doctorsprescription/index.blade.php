@extends('admin.layouts.master')

@section('content')

<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-colored-form-control">User Profile</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">

						<div class="card-text">
							<p>You can always change the border color of the form controls using <code>border-*</code> class. In this example we have user <code>border-primary</code> class for form controls. Form action buttons are on the bottom right position.</p>
						</div>

						<form class="form">
							<div class="form-body">
								<h4 class="form-section"><i class="icon-eye6"></i> About User</h4>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="userinput1">Fist Name</label>
											<input type="text" id="userinput1" class="form-control border-primary" placeholder="Name" name="name">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="userinput2">Last Name</label>
											<input type="text" id="userinput2" class="form-control border-primary" placeholder="Company" name="company">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="userinput3">Username</label>
											<input type="text" id="userinput3" class="form-control border-primary" placeholder="Username" name="username">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="userinput4">Nick Name</label>
											<input type="text" id="userinput4" class="form-control border-primary" placeholder="Nick Name" name="nickname">
										</div>
									</div>
								</div>

								<h4 class="form-section"><i class="icon-mail6"></i> Contact Info & Bio</h4>

								<div class="form-group">
									<label for="userinput5">Email</label>
									<input class="form-control border-primary" type="email" placeholder="email" id="userinput5">
								</div>

								<div class="form-group">
									<label for="userinput6">Website</label>
									<input class="form-control border-primary" type="url" placeholder="http://" id="userinput6">
								</div>

								<div class="form-group">
									<label>Contact Number</label>
									<input class="form-control border-primary" id="userinput7" type="tel" placeholder="Contact Number">
								</div>

								<div class="form-group">
									<label for="userinput8">Bio</label>
									<textarea id="userinput8" rows="5" class="form-control border-primary" name="bio" placeholder="Bio"></textarea>
								</div>

							</div>

							<div class="form-actions right">
								<button type="button" class="btn btn-warning mr-1">
									<i class="icon-cross2"></i> Cancel
								</button>
								<button type="submit" class="btn btn-primary">
									<i class="icon-check2"></i> Save
								</button>
							</div>
						</form>

					</div>
				</div>
			</div>
        </div>
        
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
            <h4 class="card-title" id="basic-layout-colored-form-control">Patient Information</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                    <li><a data-action="reload"><i class="icon-reload"></i></a></li>
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                    <li><a data-action="close"><i class="icon-cross2"></i></a></li>
                </ul>
            </div>
        </div>


        <div class="card-block">
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