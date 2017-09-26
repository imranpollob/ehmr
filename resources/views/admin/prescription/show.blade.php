@extends('admin.layouts.master')

@section('content')


    <div class="row">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Prescription ID:1</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        <li><button onclick="window.print();" class="btn btn-default"><i class="icon-print"></i></button></li>
                    </ul>
                </div>
            </div>

            <div class="card-body">
                <div class="card-block">
                    <h4 class="bold"><i class="icon-file-text black font-medium-2"></i> Issues</h4>
                    <ul>
                        <li>Ice Allergy</li>
                        <li>Cold Allergy</li>
                    </ul>
                </div>
                <div class="card-block">
                    <h4 class="bold"><i class="icon-lifebuoy black font-medium-2"></i> Medicines</h4>

                    <table class="table table-hover">
                        <tr>
                            <th>#SL</th>
                            <th>Name</th>
                            <th>Dose</th>
                            <th>Days</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>AZMASOL HFA</td>
                            <td>1 + 0 + 0</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>SPANIL</td>
                            <td>1 + 0 + 1</td>
                            <td>5</td>
                        </tr>
                    </table>

                </div>

                <div class="card-block">
                    <h4 class="bold"><i class="icon-lab black font-medium-2"></i> Diagnosis</h4>

                    <table class="table table-hover">
                        <tr>
                            <th>#SL</th>
                            <th>Name</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Skin Test For Allegy</td>
                            <td><button class="btn btn-primary btn-xs" >Take</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Blood Uric Acid Test</td>
                            <td>Already Taken</td>
                        </tr>
                    </table>
                </div>

                <div class="card-block">
                    <h4 class="bold"><i class="icon-info black font-medium-2"></i> Note by Doctor</h4>

                    <blockquote class="blockquote border-left-black">
                        Please take the medicines timely and stay far from ice-cream.
                    </blockquote>
                </div>

                <div class="card-block">
                    <h4 class="bold"><i class="icon-news black font-medium-2"></i> Attached Document</h4>

                    <a href="#"><p>blood_test.pdf</p></a>

                </div>

            </div>

        </div>
    </div>

@endsection

