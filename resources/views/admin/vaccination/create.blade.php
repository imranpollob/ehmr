@extends('admin.layouts.master')

@section('content')

    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Vaccines</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="card-body">
            <div class="card-block">
                <h4>Take new vaccine</h4>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="projectinput5">Vaccine</label>
                            <select id="projectinput5" name="interested" class="form-control">
                                <option value="none" selected="" disabled="">Please Select</option>
                                <option value="design">design</option>
                                <option value="development">development</option>
                                <option value="illustration">illustration</option>
                                <option value="branding">branding</option>
                                <option value="video">video</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="projectinput2">Start Date</label>
                            <input type="text" id="projectinput2" class="form-control datepicker">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 text-md-center">
                        <div class="form-group">
                            <button class="btn btn-danger">Take</button>
                        </div>
                    </div>
                </div>
            </div>



            {{--<div class="card-block">--}}
                {{--<h4>Available Vaccines</h4>--}}
                {{--<table class="table table-hover">--}}
                    {{--<tr>--}}
                        {{--<th>Name</th>--}}
                        {{--<th>Action</th>--}}
                        {{--<th>Status</th>--}}
                    {{--</tr>--}}
                    {{--<tr>--}}
                        {{--<td>ROTAVIRUS VACCINE</td>--}}
                        {{--<td>--}}
                            {{--<a href="#" class="btn btn-info btn-xs">Details</a>--}}
                            {{--<a href="#" class="btn btn-success btn-xs">Take</a>--}}
                        {{--</td>--}}
                        {{--<td><div class="tag tag-default">Not Taken</div></td>--}}
                    {{--</tr>--}}
                    {{--<tr>--}}
                        {{--<td>HEPATITIS A VACCINE</td>--}}
                        {{--<td>--}}
                            {{--<a href="#" class="btn btn-info btn-xs">Details</a>--}}
                        {{--</td>--}}
                        {{--<td><div class="tag tag-primary">On-going</div></td>--}}
                    {{--</tr>--}}
                    {{--<tr>--}}
                        {{--<td>TYPHOID VACCINE</td>--}}
                        {{--<td>--}}
                            {{--<a href="#" class="btn btn-info btn-xs">Details</a>--}}
                        {{--</td>--}}
                        {{--<td><div class="tag tag-success">Taken</div></td>--}}
                    {{--</tr>--}}

                {{--</table>--}}
            {{--</div>--}}
        </div>
    </div>


@endsection