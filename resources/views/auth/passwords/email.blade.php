@extends('auth.layouts.master')

@section('title',"We will send you a link to reset your password")

@section('content')

        <div class="card-block">
        <form class="form-horizontal" action="{{ url('password/email') }}" method="POST">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">    
            <fieldset class="form-group position-relative has-icon-left">
                <input type="email" class="form-control form-control-lg input-lg" id="user-email" placeholder="Your Email Address" name="email" value="{{ old('email') }}" required>
                <div class="form-control-position">
                    <i class="icon-mail6"></i>
                </div>
            </fieldset>
            <button type="submit" class="btn btn-primary btn-lg btn-block"><i class="icon-lock4"></i> Recover Password</button>
        </form>
        </div>
        <div class="card-footer no-border">
            <p class="float-sm-left text-xs-center"><a href="#" class="card-link">Login</a></p>
        </div>
    </div>

@endsection   

