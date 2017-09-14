@extends('auth.layouts.master')

@section('title',"Login to the system")

@section('content')

        <div class="card-block">
            <form class="form-horizontal form-simple" action="{{ url('login') }}" method="POST">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
            
                <fieldset class="form-group position-relative has-icon-left mb-0">
                    <input type="email" class="form-control form-control-lg input-lg" id="user-name" placeholder="Your Email" name="email" value="{{ old('email') }}" required>
                    <div class="form-control-position">
                        <i class="icon-head"></i>
                    </div>
                </fieldset>
                <fieldset class="form-group position-relative has-icon-left">
                    <input type="password" class="form-control form-control-lg input-lg" id="user-password" placeholder="Enter Password" name="password" required>
                    <div class="form-control-position">
                        <i class="icon-key3"></i>
                    </div>
                </fieldset>
                <fieldset class="form-group row">
                    <div class="col-md-6 col-xs-12 text-xs-center text-md-left">
                        <fieldset>
                            <input type="checkbox" id="remember-me" class="chk-remember" name="remember">
                            <label for="remember-me"> Remember Me</label>
                        </fieldset>
                    </div>
                    <div class="col-md-6 col-xs-12 text-xs-center text-md-right"><a href="#" class="card-link">Forgot Password?</a></div>
                </fieldset>
                <button type="submit" class="btn btn-primary btn-lg btn-block"><i class="icon-unlock2"></i> Login</button>
            </form>
        </div>
    </div>

@endsection   