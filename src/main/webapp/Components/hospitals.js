$(document).ready(function() {

    $("#alertSuccess").hide();
    $("#alertError").hide();

});

// Save
$(document).on("click", "#btnSave", function(event) {

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
            url : "HospitalsAPI",
            type : type,
            data : $("#formHospital").serialize(),
            dataType : "text",
            complete : function(response, status)
            {
                onHospitalSaveComplete(response.responseText, status);
            }
        });

});

function onHospitalSaveComplete(response, status) {

    if (status == "success") {

        var resultSet = JSON.parse(response);

        if (resultSet.status.trim() == "success") {

            $("#alertSuccess").text("Successfully saved.");
            $("#alertSuccess").show();
            $("#divHospitalsGrid").html(resultSet.data);

        } else if (resultSet.status.trim() == "error") {

            $("#alertError").text(resultSet.data);
            $("#alertError").show();

        }
    } else if (status == "error") {

        $("#alertError").text("Error while saving.");
        $("#alertError").show();

    } else {

        $("#alertError").text("Unknown error while saving..");
        $("#alertError").show();

    }

    $("#hidHospitalIDSave").val("");
    $("#formHospital")[0].reset();

}

// Update
$(document).on("click", ".btnUpdate", function(event)
{
    $("#hidHospitalIDSave").val($(this).closest("tr").find('#hidHospitalIDSave').val());
    $("#hospitalName").val($(this).closest("tr").find('td:eq(1)').text());
    $("#hospitalAddress").val($(this).closest("tr").find('td:eq(2)').text());
    $("#hospitalPhone").val($(this).closest("tr").find('td:eq(3)').text());
    $("#appointmentCharge").val($(this).closest("tr").find('td:eq(6)').text());
    $("#hospitalUsername").val($(this).closest("tr").find('td:eq(4)').text());
    $("#hospitalPassword").val($(this).closest("tr").find('td:eq(5)').text());
});

//Remove
$(document).on("click", ".btnRemove", function(event)
{
    $.ajax(
        {
            url : "HospitalsAPI",
            type : "DELETE",
            data : "hospitalID=" + $(this).data("hospitalid"),
            dataType : "text",
            complete : function(response, status)
            {
                onHospitalDeleteComplete(response.responseText, status);
            }
        });
});

function onHospitalDeleteComplete(response, status) {

    if (status == "success") {

        var resultSet = JSON.parse(response);

        if (resultSet.status.trim() == "success") {

            $("#alertSuccess").text("Successfully deleted.");
            $("#alertSuccess").show();
            $("#divHospitalsGrid").html(resultSet.data);

        } else if (resultSet.status.trim() == "error") {

            $("#alertError").text(resultSet.data);
            $("#alertError").show();

        }

    } else if (status == "error") {

        $("#alertError").text("Error while deleting.");
        $("#alertError").show();

    } else {

        $("#alertError").text("Unknown error while deleting..");
        $("#alertError").show();

    }

}

// Client Model
function validateHospitalForm() {

    // hospitalName
    if ($("#hospitalName").val().trim() == "") {

        return "Insert the Hospital Name";

    }

    // hospitalAddress
    if ($("#hospitalAddress").val().trim() == "") {

        return "Insert the Hospital Address.";

    }

    // hospitalPhone
    if ($("#hospitalPhone").val().trim() == "") {

        return "Insert the Hospital Phone Number.";

    }

    // appointmentCharge
    var tmpCharge = $("#appointmentCharge").val().trim();
    if (!$.isNumeric(tmpCharge)) {

        return "Please Enter a valid Price.";

    }
    // convert to decimal price
    $("#appointmentCharge").val(parseFloat(tmpCharge).toFixed(2));

    // hospitalUsername
    if ($("#hospitalUsername").val().trim() == "") {

        return "Insert a Username for the Hospital.";

    }

    // hospitalPassword
    if ($("#hospitalPassword").val().trim() == "") {

        return "Insert a Password for the Hospital.";

    }

    return true;

}
