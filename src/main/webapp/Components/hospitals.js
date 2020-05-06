$(document).ready(function () {

    $("#alertSuccess").hide();
    $("#alertError").hide();

    $('#divHospitalsGrid_dt').DataTable();
    $('.dataTables_length').addClass('bs-select');

});

// Save
$(document).on("click", "#btnSave", function (event) {

    // Clear alerts
    $("#alertSuccess").text("");
    $("#alertSuccess").hide();
    $("#alertError").text("");
    $("#alertError").hide();

    // Form validation
    var status = validateHospitalForm();
    if (status != true) {
        $("#alertError").text(status);
        $("#alertError").show();
        return;
    }

    // If valid
    var type = ($("#hidHospitalIDSave").val() == "") ? "POST" : "PUT";

    $.ajax(
        {
            url: "HospitalsAPI",
            type: type,
            data: $("#formHospital").serialize(),
            dataType: "text",
            complete: function (response, status) {
                onHospitalSaveComplete(response.responseText, status);
            }
        });

});

function onHospitalSaveComplete(response, status) {

    if (status == "success") {

        var resultSet = JSON.parse(response);

        if (resultSet.status.trim() == "success") {

            $("#alertSuccess").text("Successfully Saved Hospital Details.");
            $("#alertSuccess").show();
            $("#divHospitalsGrid").html(resultSet.data);

        } else if (resultSet.status.trim() == "error") {

            $("#alertError").text(resultSet.data);
            $("#alertError").show();

        }
    } else if (status == "error") {

        $("#alertError").text("Error while saving Hospital Details.");
        $("#alertError").show();

    } else {

        $("#alertError").text("Unknown Error Occurred while Saving.");
        $("#alertError").show();

    }

    $("#hidHospitalIDSave").val("");
    $("#formHospital")[0].reset();

}

// Update
$(document).on("click", ".btnUpdate", function (event) {
    $("#hidHospitalIDSave").val($(this).closest("tr").find('#hidHospitalIDUpdate').val());
    $("#hospitalName").val($(this).closest("tr").find('td:eq(1)').text());
    $("#hospitalAddress").val($(this).closest("tr").find('td:eq(2)').text());
    $("#hospitalPhone").val($(this).closest("tr").find('td:eq(3)').text());
    $("#hospitalUsername").val($(this).closest("tr").find('td:eq(4)').text());
    $("#hospitalPassword").val($(this).closest("tr").find('td:eq(5)').text());
    $("#appointmentCharge").val($(this).closest("tr").find('td:eq(6)').text());
});

//Remove
$(document).on("click", ".btnRemove", function (event) {
    $.ajax(
        {
            url: "HospitalsAPI",
            type: "DELETE",
            data: "hospitalID=" + $(this).data("hospitalid"),
            dataType: "text",
            complete: function (response, status) {
                onHospitalDeleteComplete(response.responseText, status);
            }
        });
});

function onHospitalDeleteComplete(response, status) {

    if (status == "success") {

        var resultSet = JSON.parse(response);

        if (resultSet.status.trim() == "success") {

            $("#alertSuccess").text("Hospital Details Deleted Successfully.");
            $("#alertSuccess").show();
            $("#divHospitalsGrid").html(resultSet.data);

        } else if (resultSet.status.trim() == "error") {

            $("#alertError").text(resultSet.data);
            $("#alertError").show();

        }

    } else if (status == "error") {

        $("#alertError").text("Error Occurred while Deleting the Hospital Details.");
        $("#alertError").show();

    } else {

        $("#alertError").text("Unknown Error Occurred while Deleting the Hospital Details.");
        $("#alertError").show();

    }

}

// Validation
function validateHospitalForm() {

    // hospitalName
    if ($("#hospitalName").val().trim() == "") {
        return "Please enter the Name of the hospital";
    }

    // hospitalAddress
    if ($("#hospitalAddress").val().trim() == "") {
        return "Please enter the Address of the hospital";
    }

    // hospitalPhone - Empty
    if ($("#hospitalPhone").val().trim() == "") {
        return "Please enter the Phone Number of the hospital";
    }

    // hospitalUsername
    if ($("#hospitalUsername").val().trim() == "") {
        return "Set an Username for the Hospital";
    }

    // hospitalPassword
    if ($("#hospitalPassword").val().trim() == "") {
        return "Set a Password";
    }

    // appointmentCharge
    if ($("#appointmentCharge").val().trim() == "") {
        return "Enter the Charge for an Appointment";
    }
    // is numerical value
    var tmpAppointmentCharge = $("#appointmentCharge").val().trim();
    if (!$.isNumeric(tmpAppointmentCharge)) {
        return "Insert a numerical value for appointmentCharge.";
    }
    // convert to decimal price
    $("#appointmentCharge").val(parseFloat(tmpAppointmentCharge).toFixed(2));

    return true;

}
