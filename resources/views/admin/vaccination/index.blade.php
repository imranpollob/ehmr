@extends('admin.layouts.master')

@section('content')

    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Vaccination</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="card-body">
            <div class="card-block">
                <h4>Upcoming Vaccination Dates</h4>

                <table class="table table-hover">
                    <tr>
                        <th>#SL</th>
                        <th>Name</th>
                        <th>Scheduled Date</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>HEPATITIS A VACCINE</td>
                        <td>12-11-2017</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>HEPATITIS B VACCINE</td>
                        <td>15-12-2017</td>
                    </tr>
                </table>
            </div>

            <div class="card-block">
                <h4>Previously Taken Doses</h4>

                <table class="table table-hover">
                    <tr>
                        <th>#SL</th>
                        <th>Name</th>
                        <th>Taken Date</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>TYPHOID VACCINE</td>
                        <td>01-07-2017</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>TETANUS TOXOID</td>
                        <td>15-02-2017</td>
                    </tr>
                </table>
            </div>

            <div class="card-block">
                <h4>Did you take this scheduled vaccine?</h4>

                <table class="table">
                    <tr>
                        <th>RABIES VACCINE</th>
                        <th>18-09-2017</th>
                        <th><button class="btn btn-success btn-xs">Yes</button></th>
                    </tr>

                </table>
            </div>
        </div>
	</div>

    <div class="text-md-center"><a href="vaccination/create" class="btn btn-default">Take New Vaccine</a></div>

@endsection