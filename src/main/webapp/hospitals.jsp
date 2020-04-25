<%@page import="com.Hospital" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<jsp:include page="Views/includes/header.jsp"/>

<script src="Components/hospitals.js"></script>

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

                                                            <form id="formItem" name="formItem" class="form-horizontal"
                                                                  role="form" autocomplete="off">
                                                                <div class="form-group row">
                                                                    <label class="col-md-3 control-label">Hospital
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
                                                                <div class="form-group row">
                                                                    <label class="col-md-3 control-label">Confirm
                                                                        Password</label>
                                                                    <div class="col-md-9">
                                                                        <input type="password" class="form-control"
                                                                               id="passwordConfirm"
                                                                               placeholder="Re-type your password"
                                                                               name="passwordConfirm" required>
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

                                                                        <input type="hidden" id="hidHospitalIDSave"
                                                                               name="hidHospitalIDSave" value="">

                                                                        <a href="hospitals.jsp" class="btn btn-danger"
                                                                           onclick="" type="button">Cancel</a>

                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="alertSuccess" class="alert alert-success"></div>
                                            <div id="alertError" class="alert alert-danger"></div>
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

                                                <div class="pull-right">
                                                    <div class="col-xs-12">
                                                        <input type="text" id="search-table"
                                                               class="form-control pull-right" placeholder="Search">
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="card-body">
                                                <table class="table table-hover demo-table-search table-responsive-block"
                                                       id="tableWithSearch">
                                                    <thead>
                                                    <tr>
                                                        <th>Hospital ID</th>
                                                        <th>Hospital Name</th>
                                                        <th>Hospital Address</th>
                                                        <th>Hospital Phone</th>
                                                        <th>Hospital Username</th>
                                                        <th>Hospital Password</th>
                                                        <th style="text-align: center">Update</th>
                                                        <th style="text-align: center">Remove</th>
                                                    </tr>
                                                    </thead>
                                                    <%
                                                        Hospital hospitalObj = new Hospital();
                                                        out.print(hospitalObj.readHospitals());
                                                    %>
                                                </table>
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

<jsp:include page="Views/includes/footer.jsp"/>
