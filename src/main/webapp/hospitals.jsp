<%@page import="com.Hospital" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Healthcare - Hospitals</title>
    <link rel="stylesheet" href="Views/css/bootstrap.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
    <!-- Material Design Bootstrap -->
    <link href="Views/css/mdb.min.css" rel="stylesheet">
    <!-- MDBootstrap Datatables  -->
    <link href="Views/css/addons/datatables2.min.css" rel="stylesheet">
    <!-- Custom styles -->
    <link href="Views/css/style.min.css" rel="stylesheet">

    <style>

        .map-container iframe {
            left: 0;
            top: 0;
            height: 100%;
            width: 100%;
            position: absolute;
        }

        table.dataTable thead .sorting:after,
        table.dataTable thead .sorting:before,
        table.dataTable thead .sorting_asc:after,
        table.dataTable thead .sorting_asc:before,
        table.dataTable thead .sorting_asc_disabled:after,
        table.dataTable thead .sorting_asc_disabled:before,
        table.dataTable thead .sorting_desc:after,
        table.dataTable thead .sorting_desc:before,
        table.dataTable thead .sorting_desc_disabled:after,
        table.dataTable thead .sorting_desc_disabled:before {
            bottom: .5em;
        }

    </style>
</head>

<body class="grey lighten-3">

<!--Main Navigation-->
<header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
        <div class="container-fluid">

            <!-- Brand -->
            <a class="navbar-brand waves-effect">
                <strong class="blue-text">Manage Hospitals</strong>
            </a>

            <!-- Collapse -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <!-- Left -->
                <ul class="navbar-nav mr-auto">


                </ul>

                <!-- Right -->
                <ul class="navbar-nav nav-flex-icons">

                    <li class="nav-item">
                        <a href="https://github.com/ulidu/PracticalTestHealthcare"
                           class="nav-link border border-light rounded waves-effect" target="_blank">
                            <i class="fab fa-github mr-2"></i>GitHub Repo
                        </a>
                    </li>
                </ul>

            </div>

        </div>
    </nav>
    <!-- Navbar -->

    <!-- Sidebar -->
    <div class="sidebar-fixed position-fixed">

        <a href="hospitals.jsp" class="logo-wrapper waves-effect">
            <img src="Views/img/logo_2x.png" class="img-fluid" alt="">
        </a>

        <div class="list-group list-group-flush">
            <a href="hospitals.jsp" style="color: white" class="list-group-item active waves-effect">
                <i class="fas fa-hospital-symbol mr-3"></i>Hospitals
            </a>
        </div>
    </div>
    <!-- Sidebar -->
</header>
<!--Main Navigation-->

<!--Main layout-->
<main class="pt-5 mx-lg-1">


    <div class="container-fluid mt-5">


        <!--Grid column-->
        <div class="col-md-12 mb-4">

            <!--Card-->
            <div class="card">
                <!-- Card header -->
                <div class="card-header"><i class="fas fa-plus mr-3"></i>Add New Hospital</div>

                <!--Card content-->
                <div class="card-body">

                    <form id="formHospital" name="formHospital">

                        Enter the Name of Hospital
                        <input id="hospitalName" name="hospitalName" type="text"
                               class="form-control form-control-sm">
                        <br> Enter Address of the Hospital
                        <input id="hospitalAddress" name="hospitalAddress" type="text"
                               class="form-control form-control-sm">
                        <br> Enter Phone Number
                        <input id="hospitalPhone" name="hospitalPhone" type="text"
                               class="form-control form-control-sm">
                        <br> Set an Username for your Account
                        <input id="hospitalUsername" name="hospitalUsername" type="text"
                               class="form-control form-control-sm">
                        <br> Set a Password
                        <input id="hospitalPassword" name="hospitalPassword" type="text"
                               class="form-control form-control-sm">
                        <br> Charge for an Appointment
                        <input id="appointmentCharge" name="appointmentCharge" type="text"
                               class="form-control form-control-sm">
                        <br>

                        <input id="btnSave" name="btnSave" type="button" value="Save"
                               class="btn btn-primary">
                        <input type="hidden" id="hidHospitalIDSave" name="hidHospitalIDSave" value="">

                    </form>

                    <br>

                    <div id="alertSuccess" class="alert alert-success"></div>
                    <div id="alertError" class="alert alert-danger"></div>

                    <br>


                </div>
            </div>
        </div>


    </div>
    <!--Grid row-->
    </div>
    </div>
    </div>

    <div class="container-fluid mt-5">
        <!--Grid column-->
        <div class="col-md-12 mb-4">

            <!--Card-->
            <div class="card">
                <!-- Card header -->
                <div class="card-header"><i class="fas fa-list-ul mr-3"></i>List of Registered Hospitals</div>

                <!--Card content-->
                <div class="card-body">


                    <div class="table-responsive">
                        <div id="divHospitalsGrid">
                            <%
                                Hospital hospitalObj = new Hospital();
                                out.print(hospitalObj.readHospitals());
                            %>
                        </div>
                    </div>


                </div>
                <!--Grid row-->
            </div>
        </div>
    </div>

</main>
<!--Main layout-->

<!--Footer-->
<footer class="page-footer text-center font-small primary-color-dark darken-2 mt-4 wow fadeIn">


    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">


        <a href="https://github.com/ulidu/PracticalTestHealthcare" target="_blank">
            <i class="fab fa-github mr-3"></i>
        </a>

    </div>
    <!-- Social icons -->


</footer>
<!--/.Footer-->

<!-- SCRIPTS -->

<!-- Bootstrap tooltips -->
<script type="text/javascript" src="Views/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="Views/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="Views/js/mdb.min.js"></script>
<!-- Initializations -->
<script type="text/javascript">
    // Animations initialization
    new WOW().init();

</script>
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/hospitals.js"></script>
<!-- MDBootstrap Datatables  -->
<script type="text/javascript" src="Views/js/addons/datatables2.min.js"></script>
</body>

</html>
