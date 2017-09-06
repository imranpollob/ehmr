<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Electronic Health and Medical Record System">
    <title>EHMR</title>
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('app-assets') }}/images/ico/apple-icon-60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('app-assets') }}/images/ico/apple-icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('app-assets') }}/images/ico/apple-icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('app-assets') }}/images/ico/apple-icon-152.png">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('app-assets') }}/images/ico/favicon.ico">
    <link rel="shortcut icon" type="image/png" href="{{ asset('app-assets') }}/images/ico/favicon-32.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/bootstrap.css">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/vendors/css/extensions/pace.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN ROBUST CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/app.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/colors.css">
    <!-- END ROBUST CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/pages/login-register.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets') }}/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1  box-shadow-2 p-0">
        <div class="card border-grey border-lighten-3 m-0">
        <div class="card-header no-border">
        <div class="card-title text-xs-center">
            <div class="p-1"><img src="{{ asset('app-assets') }}/images/logo/robust-logo-light.png" alt="branding logo"></div>
        </div>
        <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>@yield('title')</span></h6>
    </div>
    <div class="card-body collapse in">

        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>{{ trans('quickadmin::auth.whoops') }}</strong> {{ trans('quickadmin::auth.some_problems_with_input') }}
                <br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

            @yield('content')

        </div>
    </div>
</section>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    <!-- BEGIN VENDOR JS-->
    <script src="{{ asset('app-assets') }}/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="{{ asset('app-assets') }}/js/core/app-menu.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->
  </body>
</html>

