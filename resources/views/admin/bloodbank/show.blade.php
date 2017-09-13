@extends('admin.layouts.master')

@section('content')

    @if ($bloodbank->count())

    <div class="row">
        <div class="col-xs-12">
            <div class="card">
                <div class="card-header">
                    <h2 class="card-title">{{ $bloodgroup }}</h2>
                    <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body collapse in">
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead>
                            <tr>
                                <th class="bold">Hospital</th>
                                <th class="bold">Count</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($bloodbank as $row)
                            <tr>
                                <td>{{ $row->hospital }}</td>
                                <td>{{ $row->count }}</td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @endif

@endsection
