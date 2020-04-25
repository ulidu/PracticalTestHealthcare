<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>HealthCare</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
    <link rel="icon" type="image/x-icon" href="Views/assets/img/favicon.ico" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="Views/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="Views/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Views/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="Views/assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Views/assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Views/assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Views/assets/plugins/nvd3/nv.d3.min.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Views/assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css" />
    <link href="Views/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" media="screen">
    <link href="Views/assets/plugins/mapplic/css/mapplic.css" rel="stylesheet" type="text/css" />
    <link href="Views/assets/css/dashboard.widgets.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="Views/pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="Views/pages/css/themes/light.css" rel="stylesheet" type="text/css" />
    <style>
        
        .cardhover:hover {
            background-color: #F0F0F0;


        }

    </style>


    <script src="Components/jquery-3.5.0.min.js"></script>


</head>

<body class="fixed-header dashboard menu-pin">
    <!-- BEGIN SIDEBPANEL-->
    <nav class="page-sidebar" data-pages="sidebar">
        <!-- BEGIN SIDEBAR MENU TOP TRAY CONTENT-->
        <!-- END SIDEBAR MENU TOP TRAY CONTENT-->
        <!-- BEGIN SIDEBAR MENU HEADER-->
        <div class="sidebar-header">
            <a href="index.jsp"><img src="Views/assets/img/logo.png" alt="logo" class="brand" data-src="Views/assets/img/logo.png" width="180"></a>
        </div>
        <!-- END SIDEBAR MENU HEADER-->
        <!-- START SIDEBAR MENU -->
        <div class="sidebar-menu">
            <!-- BEGIN SIDEBAR MENU ITEMS-->
            <ul class="menu-items">
                <li class="m-t-30 ">
                    <a href="index.jsp" class="title">
                        <span class="title">Dashboard</span>
                    </a>
                    <span class="icon-thumbnail"><i data-feather="home"></i></span>
                </li>
               
                <li class="">
                    <a href="hospitals.jsp"><span class="title">Hospitals</span></a>
                    <span class="icon-thumbnail"><i data-feather="shield"></i></span>
                </li>
               
                <li class="">
                    <a href="payments.jsp"><span class="title">Payments</span></a>
                    <span class="icon-thumbnail"><i data-feather="credit-card"></i></span>
                </li>


            </ul>

        </div>
        <!-- END SIDEBAR MENU -->
    </nav>
    <!-- END SIDEBAR -->
    <!-- END SIDEBPANEL-->

    <!-- START PAGE-CONTAINER -->
    <div class="page-container ">
        <!-- START HEADER -->
        <div style="background-color: transparent" class="header ">
            <!-- START MOBILE SIDEBAR TOGGLE -->
            <a href="#" class="btn-link toggle-sidebar d-lg-none pg pg-menu" data-toggle="sidebar">
            </a>
            <!-- END MOBILE SIDEBAR TOGGLE -->
            <div class="">
                <div class="brand inline">
                    <img src="Views/assets/img/logo.png" alt="logo" data-src="Views/assets/img/logo.png" data-src-retina="Views/assets/img/logo_2x.png" width="180">
                </div>


            </div>
            <div style="width: 50%; margin-top: -10px; text-align: center" id="alertSuccess" class="alert alert-success v-align-middle"></div>
            <div style="width: 50%; margin-top: -10px; text-align: center" id="alertError" class="alert alert-danger v-align-middle"></div>
            <div class="d-flex align-items-center">

                <!-- START User Info-->
                <div class="pull-left p-r-10 fs-14 font-heading d-lg-inline-block d-none m-l-20">


                </div>
                <div class="dropdown pull-right d-lg-inline-block d-none">
                    <button class="profile-dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="thumbnail-wrapper d32 circular inline">
                            <img src="Views/assets/img/github.png" alt="" data-src="Views/assets/img/github.png" width="32" height="32">
                        </span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right profile-dropdown" role="menu">

                        <a target="_blank" href="https://github.com/ulidu/PracticalTestHealthcare" class="dropdown-item"><i class="fa fa-external-link"></i> Healthcare Github Repository</a>

                        <a target="_blank" href="https://github.com/ulidu/PracticalTestHealthcare" class="  ">

                        </a>
                    </div>
                </div>
                <!-- END User Info-->

            </div>
        </div>
        <!-- END HEADER -->
