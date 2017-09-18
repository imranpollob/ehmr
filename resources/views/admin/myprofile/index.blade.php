@extends('admin.layouts.master')

@section('content')

    <div class="card">

        <div class="card-header">
            <h4 class="card-title">My Profile</h4>
            <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
            <div class="heading-elements">
                <ul class="list-inline mb-0">
                    <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-hover">
                @foreach($obj as $key => $value)
                    <tr>
                        <th>{{ $key }}</th>
                        <td>{{ $value }}</td>
                    </tr>
                @endforeach

            </table>
        </div>

    </div>


@endsection