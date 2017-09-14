<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>EHMR</title>

    <style>
        body,
        html {
            width: 100%;
            height: 100%;
            padding-top: 25px;
        }

        body,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: "Lato", "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-weight: 700;
        }

        .topnav {
            font-size: 14px;
        }

        .lead {
            font-size: 18px;
            font-weight: 400;
        }

        footer {
            padding: 30px 0;
            background-color: #f8f8f8;
            text-align: center;
        }

        p.copyright {
            margin: 15px 0 0;
        }

        .intro-header {
            padding-bottom: 50px;
            text-align: center;
            color: #f8f8f8;
            background: url(images/intro-bg.jpg) no-repeat center center;
            background-size: cover;
        }

        .intro-message {
            position: relative;
            padding-top: 20%;
            padding-bottom: 20%;
        }

        .intro-message > h1 {
            margin: 0;
            text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
            font-size: 5em;
        }

        .intro-divider {
            width: 400px;
            border-top: 1px solid #f8f8f8;
            border-bottom: 1px solid rgba(0, 0, 0, 0.2);
        }

        .intro-message > h3 {
            text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
        }

        @media (max-width: 767px) {
            .intro-message {
                padding-bottom: 15%;
            }

            .intro-message > h1 {
                font-size: 3em;
            }

            ul.intro-social-buttons > li {
                display: block;
                margin-bottom: 20px;
                padding: 0;
            }

            ul.intro-social-buttons > li:last-child {
                margin-bottom: 0;
            }

            .intro-divider {
                width: 100%;
            }
        }

        .network-name {
            text-transform: uppercase;
            font-size: 14px;
            font-weight: 400;
            letter-spacing: 2px;
        }

        .content-section-a {
            padding: 50px 0;
            background-color: #f8f8f8;
        }

        .content-section-b {
            padding: 50px 0;
            border-top: 1px solid #e7e7e7;
            border-bottom: 1px solid #e7e7e7;
        }

        .section-heading {
            margin-bottom: 30px;
        }

        .section-heading-spacer {
            float: left;
            width: 200px;
            border-top: 3px solid #e7e7e7;
        }

        .banner {
            padding: 100px 0;
            color: #f8f8f8;
            background: url(../images/banner-bg.jpg) no-repeat center center;
            background-size: cover;
        }

        .banner h2 {
            margin: 0;
            text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
            font-size: 3em;
        }

        .banner ul {
            margin-bottom: 0;
        }

        .banner-social-buttons {
            float: right;
            margin-top: 0;
        }

        @media (max-width: 1199px) {
            ul.banner-social-buttons {
                float: left;
                margin-top: 15px;
            }
        }

        @media (max-width: 767px) {
            .banner h2 {
                margin: 0;
                text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.6);
                font-size: 3em;
            }

            ul.banner-social-buttons > li {
                display: block;
                margin-bottom: 20px;
                padding: 0;
            }

            ul.banner-social-buttons > li:last-child {
                margin-bottom: 0;
            }
        }



        .booking {
            background-color: #2f3c44;
            padding: 30px 10px;
            text-align: center;
        }

        .booking h1{
            color: #f8f8f8;
            padding: 10px 10px;
        }
    </style>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Custom Fonts -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
          type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
    <div class="container topnav">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand topnav" href="#">EHMR</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
            @if (Route::has('login'))
                
                    @if (Auth::check())
                    <li>
                        
                        <a href="{{ url('/admin') }}">Home</a>
                    </li>
                    @else
                    <li>
                        
                        <a href="{{ url('/login') }}">Login</a>
                    </li>
                        {{--<a href="{{ url('/register') }}">Register</a>--}}
                    @endif
               
            @endif
            
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

   <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>Electronic Medical and Health Record System</h1>
                        <h3>Your Personal Electronic Health Book</h3>
                        <hr class="intro-divider">
                        <ul class="list-inline intro-social-buttons">
                            <li>
                                <a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span
                                            class="network-name">Twitter</span></a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span
                                            class="network-name">Facebook</span></a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span
                                            class="network-name">Google Plus</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->


<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <p class="copyright text-muted small">Copyright &copy; EHMR {{ date('Y') }}. All Rights
                    Reserved</p>
            </div>
        </div>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>