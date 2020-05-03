<%@page import="com.Hospital" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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
        <!--

    <div style="width: 50%; margin-top: -10px; text-align: center" id="alertSuccess" class="alert alert-success v-align-middle"></div>
    <div style="width: 50%; margin-top: -10px; text-align: center" id="alertError" class="alert alert-danger v-align-middle"></div>
-->
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
                            <li class="breadcrumb-item active">Hospitals</li>
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

                        <div class="col-lg-12 sm-no-padding">
                            <div class="card card-transparent">
                                <div class="card-body no-padding">
                                    <div id="card-advance" class="card card-default">
                                        <div class="card-header">
                                            <div class="card-title">Hospitals
                                            </div>

                                        </div>
                                        <div class="card-body">

                                            <div class="pull-right">
                                                <div class="col-xs-12">
                                                    <a id="buttonscroll" style="color: #FAFAFA" class="btn btn-success"
                                                       type="button">View Registered Hospitals</a>
                                                </div>
                                            </div>
                                            <h3>
                                                <span class="semi-bold">Hospital</span> Management</h3>
                                            <br>

                                            <div>


                                                <!-- START card -->
                                                <div class="card card-transparent">
                                                    <div class="card-header ">
                                                        <div class="card-title">Adding or Updating a Hospital
                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-10">
                                                                <h3>Please fill the hospital details</h3>

                                                                <br>

                                                                <form style="color: #0c0c0c;" id="formHospital" name="formHospital" class="form-horizontal"
                                                                      role="form" autocomplete="off">
                                                                    <div style="color: #0c0c0c;" class="form-group row">
                                                                        <label style="color: #0c0c0c;" class="col-md-3 control-label">Hospital
                                                                            Name</label>
                                                                        <div class="col-md-9">
                                                                            <input type="text" class="form-control"
                                                                                   id="hospitalName"
                                                                                   placeholder="Enter hospital name"
                                                                                   name="hospitalName" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-md-3 control-label">Address</label>
                                                                        <div class="col-md-9">
                                                                        <textarea class="form-control"
                                                                                  id="hospitalAddress"
                                                                                  name="hospitalAddress"
                                                                                  placeholder="Enter hospital address"
                                                                                  required></textarea>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-md-3 control-label">Phone</label>
                                                                        <div class="col-md-9">

                                                                            <div class="row">
                                                                                <div class="col-md-5">
                                                                                    <input id="hospitalPhone"
                                                                                           name="hospitalPhone" type="tel"
                                                                                           placeholder="Phone Number"
                                                                                           class="form-control" required>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-md-3 control-label">Charge for an
                                                                            Appointment</label>
                                                                        <div class="col-md-9">

                                                                            <div class="row">
                                                                                <div class="col-md-5">
                                                                                    <input id="appointmentCharge"
                                                                                           name="appointmentCharge"
                                                                                           type="text"
                                                                                           placeholder="Charge for an Appointment"
                                                                                           class="form-control" required>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-md-3 control-label">Username</label>
                                                                        <div class="col-md-9">
                                                                            <input type="text" class="form-control"
                                                                                   id="hospitalUsername"
                                                                                   placeholder="Give an username to login to your Hospital account"
                                                                                   name="hospitalUsername" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group row">
                                                                        <label class="col-md-3 control-label">Password</label>
                                                                        <div class="col-md-9">
                                                                            <input type="password" class="form-control"
                                                                                   id="hospitalPassword"
                                                                                   placeholder="Choose a password to login to your Hospital account"
                                                                                   name="hospitalPassword" required>
                                                                        </div>
                                                                    </div>



                                                                    <br>
                                                                    <div class="row">
                                                                        <div class="col-md-3">

                                                                        </div>
                                                                        <div class="col-md-9">
                                                                            <button class="btn btn-success" id="btnSave"
                                                                                    name="btnSave" type="button">
                                                                                Submit
                                                                            </button>


                                                                            <a href="hospitals.jsp" class="btn btn-danger"
                                                                               onclick="" type="button">Cancel</a>

                                                                        </div>
                                                                    </div>
                                                                    <input type="hidden" id="hidHospitalIDSave" name="hidHospitalIDSave" value="">
                                                                </form>
                                                                <br>
                                                                <div style="text-align: center" id="alertSuccess" class="alert alert-success v-align-middle"></div>
                                                                <div style="text-align: center" id="alertError" class="alert alert-danger v-align-middle"></div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                                <!-- END card -->
                                                <!-- START card -->

                                                <div id="view" class="card-header">
                                                    <div class="card-title">View Hospitals
                                                    </div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="row">

                                                        <h3>List of Hospitals that Registered</h3>

                                                    </div>


                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="card-body">


                                                    <div id="divHospitalsGrid">
                                                        <%
                                                            Hospital hospitalObj = new Hospital();
                                                            out.print(hospitalObj.readHospitals());
                                                        %>

                                                    </div>
                                                    <!--  </table> -->
                                                </div>
                                            </div>
                                            <!-- END card -->

                                        </div>
                                    </div>
                                </div>
                            </div>
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
<script src="Components/hospitals.js"></script>
<script src="Components/jquery-3.5.0.min.js"></script>
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
