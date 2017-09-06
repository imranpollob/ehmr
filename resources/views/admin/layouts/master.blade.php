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
    <link rel="stylesheet" type="text/css" href="{{ asset('app-assets') }}/css/core/colors/palette-gradient.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets') }}/css/style.css">
    <!-- END Custom CSS-->
    <link rel="stylesheet" href="{{ asset('css') }}/font-awesome.min.css"/>
    <link rel="stylesheet" href="{{ asset('css') }}/components.css"/>
    <link rel="stylesheet" href="{{ asset('css') }}/jquery-ui.min.css">
    <link rel="stylesheet" href="{{ asset('css') }}/chosen.min.css"/>
    <link rel="stylesheet" href="{{ asset('css') }}/jquery.datetimepicker.min.css"/>
    <link rel="stylesheet" href="{{ asset('css') }}/jquery.dataTables.min.css"/>

    <style type="text/css">
        .huge {
            font-size: 30px;
            color: white;
            text-align: center;
            padding: 30px 0;
        }
        .first{
            padding-top: 47px;
        }
    </style>

    @yield('style')

  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item"><a href="{{ url(config('quickadmin.homeRoute')) }}" class="navbar-brand nav-link"><img alt="branding logo" src="{{ asset('app-assets') }}/images/logo/robust-logo-light.png" data-expand="{{ asset('app-assets') }}/images/logo/robust-logo-light.png" data-collapse="{{ asset('app-assets') }}/images/logo/robust-logo-small.png" class="brand-logo"></a></li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5">         </i></a></li>
              <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon icon-expand2"></i></a></li>
            </ul>
            <ul class="nav navbar-nav float-xs-right">
              <li class="dropdown dropdown-user nav-item">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link">
                        <span class="avatar avatar-online">
                            <img src="{{ asset('app-assets') }}/images/portrait/small/avatar-s-1.png" alt="avatar">
                            <i></i>
                        </span>
                        <span class="user-name">{{ \Illuminate\Support\Facades\Auth::user()->name }}</span>
                    </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="#" class="dropdown-item"><i class="icon-head"></i> Edit Profile</a>
                    <a href="#" class="dropdown-item"><i class="icon-mail6"></i> My Inbox</a>
                  <div class="dropdown-divider"></div>
                  {!! Form::open(['url' => 'logout']) !!}
                  <button type="submit" href="#" class="dropdown-item"><i class="icon-power3"></i> Logout</button>
                  {!! Form::close() !!}
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <!-- main menu-->
    <div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
      <!-- main menu content-->
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          
       
          @if(Auth::user()->role_id == config('quickadmin.defaultRole'))
                <li @if(Request::path() == config('quickadmin.route').'/menu') class=" nav-item" @endif>
                    <a href="{{ url(config('quickadmin.route').'/menu') }}">
                        <i class="icon-list3"></i>
                        <span class="menu-title">Menu</span>
                    </a>
                </li>
                <li @if(Request::path() == 'users') class=" nav-item" @endif>
                    <a href="{{ url('users') }}">
                        <i class="icon-users3"></i>
                        <span class="menu-title">Users</span>
                    </a>
                </li>
                <li @if(Request::path() == 'roles') class=" nav-item" @endif>
                    <a href="{{ url('roles') }}">
                        <i class="icon-gavel"></i>
                        <span class="menu-title">Roles</span>
                    </a>
                </li>
                <li @if(Request::path() == config('quickadmin.route').'/actions') class=" nav-item" @endif>
                    <a href="{{ url(config('quickadmin.route').'/actions') }}">
                        <i class="icon-users3"></i>
                        <span class="menu-title">User Actions</span>
                    </a>
                </li>
            @endif

          @foreach($menus as $menu)
                @if($menu->menu_type != 2 && is_null($menu->parent_id))
                    @if(Auth::user()->role->canAccessMenu($menu))
                        <li @if(isset(explode('/',Request::path())[1]) && explode('/',Request::path())[1] == strtolower($menu->name)) class=" nav-item" @endif>
                            <a href="{{ route(config('quickadmin.route').'.'.strtolower($menu->name).'.index') }}">
                                <i class="fa {{ $menu->icon }}"></i>
                                <span class="menu-title">{{ $menu->title }}</span>
                            </a>
                        </li>
                    @endif
                @else
                    @if(Auth::user()->role->canAccessMenu($menu) && !is_null($menu->children()->first()) && is_null($menu->parent_id))
                        <li>
                            <a href="#">
                                <i class="fa {{ $menu->icon }}"></i>
                                <span class="menu-title">{{ $menu->title }}</span>                       
                            </a>
                            <ul class="sub-menu">
                                @foreach($menu['children'] as $child)
                                    @if(Auth::user()->role->canAccessMenu($child))
                                        <li
                                                @if(isset(explode('/',Request::path())[1]) && explode('/',Request::path())[1] == strtolower($child->name)) class="active" @endif>
                                            <a href="{{ route(strtolower(config('quickadmin.route').'.'.$child->name).'.index') }}">
                                                <i class="icon-{{ $child->icon }}"></i>
                                                <span class="title">{{ $child->title }}</span>
                                            </a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </li>
                    @endif
                @endif
            @endforeach
        </ul>
      </div>
      <!-- /main menu content-->
    </div>
    <!-- / main menu-->

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
            
        </div>
        <div class="content-body">

            <div class="row first">

                @yield('content')

            </div>

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
    <script src="{{ asset('app-assets') }}/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="{{ asset('app-assets') }}/js/core/app-menu.js" type="text/javascript"></script>
    <script src="{{ asset('app-assets') }}/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="{{ asset('app-assets') }}/js/scripts/pages/dashboard-lite.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
    <script src="{{ asset('js') }}/jquery-ui.min.js"></script>
    <script src="{{ asset('js/ckeditor') }}/ckeditor.js"></script>
    <script src="{{ asset('js') }}/chosen.jquery.min.js"></script>
    <script src="{{ asset('js') }}/jquery.datetimepicker.full.min.js"></script>
    <script src="{{ asset('js') }}/main.js"></script>
    <script src="{{ asset('js') }}/jquery.dataTables.min.js"></script>


    <script>

        $('.datepicker').datetimepicker({
            format:'Y-m-d',
            timepicker:false,
            // datepicker:false,
        });

        $('.timepicker').datetimepicker({
            format:'H:i:00',
    //         timepicker:false,
            datepicker:false,
        });

        $('.datetimepicker').datetimepicker({
            format:'Y-m-d H:i:00',
            // timepicker:false,
            // datepicker:false,
        });

        $('#datatable').dataTable( {
            "language": {
                "url": "{{ trans('quickadmin::strings.datatable_url_language') }}"
            }
        });
        $(".chosen").chosen()
    </script>
    @yield('javascript')

  </body>
</html>
