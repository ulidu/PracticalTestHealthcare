package com;

import java.sql.*;

public class Hospital {

    private Connection connect() {

        Connection con = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/practicaltest", "root", "");

        } catch (Exception e) {

            e.printStackTrace();

        }

        return con;

    }

    public String readHospitals() {

        String output = "";

        try {

            Connection con = connect();

            if (con == null) {

                return "Error while connecting to the database for reading.";

            }

            // Prepare the html table to be displayed
            output = "<table style='text-align:center' id=divHospitalsGrid_dt class='table table-striped table-bordered table-sm'><thead><tr><th class=th-sm> Hospital ID </th> <th class=th-sm> Name </th ><th class=th-sm> Address </th> <th class=th-sm> Phone Number </th> <th class=th-sm> Username </th><th class=th-sm> Password </th><th class=th-sm> Appointment Charge </th> <th class=th-sm> Update </th ><th class=th-sm> Remove </th ></tr></thead> ";

            String query = "select * from hospital";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            // iterate through the rows in the result set
            while (rs.next()) {

                String hospitalID = Integer.toString(rs.getInt("hospitalID"));
                String hospitalName = rs.getString("hospitalName");
                String hospitalAddress = rs.getString("hospitalAddress");
                String hospitalPhone = rs.getString("hospitalPhone");
                String hospitalUsername = rs.getString("hospitalUsername");
                String hospitalPassword = rs.getString("hospitalPassword");
                String appointmentCharge = Double.toString(rs.getDouble("appointmentCharge"));

                // Add into the html table
                output += "<tbody><tr><td><input id='hidHospitalIDUpdate' name = 'hidHospitalIDUpdate' type = 'hidden' value = '" + hospitalID + "'>" + hospitalID + "</td>";
                output += "<td>" + hospitalName + "</td>";
                output += "<td>" + hospitalAddress + "</td>";
                output += "<td>" + hospitalPhone + "</td>";
                output += "<td>" + hospitalUsername + "</td>";
                output += "<td>" + hospitalPassword + "</td>";
                output += "<td>" + appointmentCharge + "</td>";

                // buttons
                output += "<td><input name='btnUpdate' type = 'button' value = 'Update' class='btnUpdate btn btn-primary' ></td > " + "<td><input name='btnRemove' type = 'button' value = 'Remove' class='btnRemove btn btn-danger' data-hospitalid = '" + hospitalID + "'>" + "</td></tr></tbody>";

            }

            con.close();

            // Complete the html table
            output += "</table>";

        } catch (Exception e) {

            output = "Error while reading the hospitals.";
            System.err.println(e.getMessage());

        }

        return output;

    }

    public String insertHospital(String hospitalName, String hospitalAddress, String hospitalPhone, String hospitalUsername, String hospitalPassword, String appointmentCharge) {

        String output = "";

        try {

            Connection con = connect();

            if (con == null) {

                return "Error while connecting to the database for inserting.";

            }

            // create a prepared statement
            String query = " insert into hospital (hospitalID, hospitalName, hospitalAddress, hospitalPhone, hospitalUsername, hospitalPassword, appointmentCharge)" + " values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStmt = con.prepareStatement(query);

            // binding values
            preparedStmt.setInt(1, 0);
            preparedStmt.setString(2, hospitalName);
            preparedStmt.setString(3, hospitalAddress);
            preparedStmt.setString(4, hospitalPhone);
            preparedStmt.setString(5, hospitalUsername);
            preparedStmt.setString(6, hospitalPassword);
            preparedStmt.setDouble(7, Double.parseDouble(appointmentCharge));

            // execute the statement
            preparedStmt.execute();
            con.close();

            String newHospitals = readHospitals();
            output = "{\"status\":\"success\", \"data\": \"" + newHospitals + "\"}";

        } catch (Exception e) {

            output = "{\"status\":\"error\", \"data\":\"Error while inserting the hospital.\"}";
            System.err.println(e.getMessage());

        }

        return output;

    }

    public String updateHospital(String ID, String hospitalName, String hospitalAddress, String hospitalPhone, String hospitalUsername, String hospitalPassword, String appointmentCharge) {

        String output = "";

        try {

            Connection con = connect();

            if (con == null) {

                return "Error while connecting to the database for updating.";

            }

            // create a prepared statement
            String query = "UPDATE hospital SET hospitalName =?,hospitalAddress =?,hospitalPhone =?,hospitalUsername =?,hospitalPassword =?,appointmentCharge =?WHERE hospitalID =?";
            PreparedStatement preparedStmt = con.prepareStatement(query);

            // binding values
            preparedStmt.setString(1, hospitalName);
            preparedStmt.setString(2, hospitalAddress);
            preparedStmt.setString(3, hospitalPhone);
            preparedStmt.setString(4, hospitalUsername);
            preparedStmt.setString(5, hospitalPassword);
            preparedStmt.setDouble(6, Double.parseDouble(appointmentCharge));
            preparedStmt.setInt(7, Integer.parseInt(ID));

            // execute the statement
            preparedStmt.execute();
            con.close();

            String newHospitals = readHospitals();
            output = "{\"status\":\"success\", \"data\": \"" + newHospitals + "\"}";

        } catch (Exception e) {

            output = "{\"status\":\"error\", \"data\":\"Error while updating the hospital.\"}";
            System.err.println(e.getMessage());

        }

        return output;

    }

    public String deleteHospital(String hospitalID) {

        String output = "";

        try {

            Connection con = connect();

            if (con == null) {

                return "Error while connecting to the database for deleting.";

            }

            // create a prepared statement
            String query = "delete from hospital where hospitalID=?";
            PreparedStatement preparedStmt = con.prepareStatement(query);

            // binding values
            preparedStmt.setInt(1, Integer.parseInt(hospitalID));

            // execute the statement
            preparedStmt.execute();
            con.close();

            String newHospitals = readHospitals();
            output = "{\"status\":\"success\", \"data\": \"" + newHospitals + "\"}";

        } catch (Exception e) {

            output = "{\"status\":\"error\", \"data\":\"Error while deleting the hospital.\"}";
            System.err.println(e.getMessage());

        }

        return output;

    }

}
