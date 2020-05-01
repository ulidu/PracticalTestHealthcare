<jsp:include page="Views/includes/header.jsp"/>
<script src="Components/hospitals.js"></script>
<script src="Components/jquery-3.5.0.min.js"></script>
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

<jsp:include page="Views/includes/footer.jsp"/>
