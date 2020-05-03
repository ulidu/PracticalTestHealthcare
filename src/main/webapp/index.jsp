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

    <script src="Components/hospitals.js"></script>
    <script src="Components/jquery-3.5.0.min.js"></script>

    <style>

        .cardhover:hover {
            background-color: #F0F0F0;


        }

    </style>




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

    <!-- START PAGE CONTENT WRAPPER -->
<div class="page-content-wrapper ">
    <!-- START PAGE CONTENT -->
    <div class="content sm-gutter">
        <!-- START JUMBOTRON -->
        <div data-pages="parallax">
            <div class="container-fluid p-l-25 p-r-25 sm-p-l-0 sm-p-r-0">
                <div class="inner">
                    <!-- START BREADCRUMB -->
                    <ol class="breadcrumb sm-p-b-5">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- END JUMBOTRON -->
        <!-- START CONTAINER FLUID -->
        <div class="container-fluid p-l-25 p-r-25 p-t-0 p-b-25 sm-padding-10">
            <!-- START ROW -->


            <!-- START card -->
            <div class="card card-transparent">

                <div class="m-0 row card-body">

                    <div class="col-lg-12 col-sm-12  d-flex flex-column">


                        <div class="row">


                            <!-- START WIDGET-->
                            <div class="col-lg-4 col-sm-6  d-flex flex-column">
                                <div style="cursor: pointer;" onclick="location.href='hospitals.jsp';"
                                     class="cardhover card no-border widget-loader-bar m-b-10">
                                    <div class="container-xs-height full-height">
                                        <div class="row-xs-height">
                                            <div class="col-xs-height col-top">
                                                <div class="card-header  top-left top-right">
                                                    <div class="card-title">
                                                        <span class="font-montserrat fs-11 all-caps">Hospitals <i
                                                                class="fa fa-chevron-right"></i>
                                                        </span>
                                                    </div>
                                                    <div class="card-controls">
                                                        <ul>
                                                            <li><a href="#" class="portlet-refresh text-black"
                                                                   data-toggle="refresh"><i
                                                                    class="portlet-icon portlet-icon-refresh"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row-xs-height">
                                            <div class="col-xs-height col-top">
                                                <div class="p-l-20 p-t-50 p-b-40 p-r-20">
                                                    <h5 class="no-margin p-b-5">Hospital Management</h5>
                                                    <span class="small hint-text pull-left">Manage the details of hospitals</span>
                                                    <span class="pull-right small text-primary"><i
                                                            data-feather="shield"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row-xs-height">
                                            <div class="col-xs-height col-bottom">
                                                <div class="progress progress-small m-b-0">
                                                    <!-- START BOOTSTRAP PROGRESS (http://getbootstrap.com/components/#progress) -->
                                                    <div class="progress-bar progress-bar-success"
                                                         style="width:100%"></div>
                                                    <!-- END BOOTSTRAP PROGRESS -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END WIDGET -->
                            </div>


                            <!-- START WIDGET-->

                            <!-- END WIDGET -->
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- START CONTAINER FLUID -->
        <div class=" container-fluid  container-fixed-lg footer">
            <div class="copyright sm-text-center">
                <p class="small no-margin pull-left sm-pull-reset">
                    <span class="hint-text">Copyright &copy; 2020 </span>
                    <span class="font-montserrat"><a target="_blank" href="https://github.com/ulidu/PracticalTestHealthcare/graphs/contributors">Healthcare</a></span>.
                    <span class="hint-text">All rights reserved. </span>

                </p>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

    <!-- END COPYRIGHT -->

    <!-- BEGIN VENDOR JS -->
    <script src="Views/assets/plugins/feather-icons/feather.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/modernizr.custom.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/popper/umd/popper.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-actual/jquery.actual.min.js"></script>
    <script src="Views/assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script type="text/javascript" src="Views/assets/plugins/select2/js/select2.full.min.js"></script>
    <script type="text/javascript" src="Views/assets/plugins/classie/classie.js"></script>
    <script src="Views/assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/lib/d3.v3.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/nv.d3.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/src/utils.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/src/tooltip.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/src/interactiveLayer.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/src/models/axis.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/src/models/line.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/nvd3/src/models/lineWithFocusChart.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/rickshaw/rickshaw.min.js"></script>
    <script src="Views/assets/plugins/mapplic/js/hammer.min.js"></script>
    <script src="Views/assets/plugins/mapplic/js/jquery.mousewheel.js"></script>
    <script src="Views/assets/plugins/mapplic/js/mapplic.js"></script>
    <script src="Views/assets/js/dashboard.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-datatable/media/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-datatable/extensions/TableTools/js/dataTables.tableTools.min.js"
            type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-datatable/media/js/dataTables.bootstrap.js" type="text/javascript"></script>
    <script src="Views/assets/plugins/jquery-datatable/extensions/Bootstrap/jquery-datatable-bootstrap.js"
            type="text/javascript"></script>
    <script type="text/javascript" src="Views/assets/plugins/datatables-responsive/js/datatables.responsive.js"></script>
    <script type="text/javascript" src="Views/assets/plugins/datatables-responsive/js/lodash.min.js"></script>

    <!-- END VENDOR JS -->
    <!-- BEGIN CORE TEMPLATE JS -->

    <script src="Views/pages/js/pages.js"></script>
    <script src="Views/assets/js/scripts.js" type="text/javascript"></script>
    <script src="Views/assets/js/dashboard.js" type="text/javascript"></script>
    <script src="Views/assets/js/scripts.js" type="text/javascript"></script>
    <script src="Views/assets/js/card.js" type="text/javascript"></script>
    <script src="Views/assets/js/scripts.js" type="text/javascript"></script>
    <script src="Views/assets/js/datatables.js" type="text/javascript"></script>
    <script src="Views/assets/js/scripts.js" type="text/javascript"></script>
    <!-- END VENDOR JS -->
    <!-- BEGIN CORE TEMPLATE JS -->

    <script>

        $("#buttonscroll").click(function() {
            $('html, body').animate({
                scrollTop: $("#view").offset().top
            }, 1500);
        });

    </script>
    <!-- END CORE TEMPLATE JS -->
</body>

</html>
