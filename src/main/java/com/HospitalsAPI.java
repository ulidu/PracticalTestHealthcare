package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

@WebServlet("/HospitalsAPI")
public class HospitalsAPI extends HttpServlet {

    private static final long serialVersionUID = 1L;

    Hospital hospitalObj = new Hospital();

    public HospitalsAPI(){

        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String output = hospitalObj.insertHospital(

                request.getParameter("hospitalName"),
                request.getParameter("hospitalAddress"),
                request.getParameter("hospitalPhone"),
                request.getParameter("hospitalUsername"),
                request.getParameter("hospitalPassword"),
                request.getParameter("appointmentCharge")

        );

        response.getWriter().write(output);

    }

    // Convert request parameters to a Map
    private static Map getParasMap(HttpServletRequest request) {

        Map<String, String> map = new HashMap<String, String>();

        try {
            Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
            String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
            scanner.close();
            String[] params = queryString.split("&");

            for (String param : params) {

                String[] p = param.split("=");
                map.put(p[0], p[1]);

            }

        }
        catch (Exception e) {

        }

        return map;

    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map paras = getParasMap(request);
        String output = hospitalObj.updateHospital(

                paras.get("hidHospitalIDSave").toString(),
                paras.get("hospitalName").toString(),
                paras.get("hospitalAddress").toString(),
                paras.get("hospitalPhone").toString(),
                paras.get("hospitalUsername").toString(),
                paras.get("hospitalPassword").toString(),
                paras.get("appointmentCharge").toString()

        );

        response.getWriter().write(output);

    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map paras = getParasMap(request);
        String output = hospitalObj.deleteHospital(paras.get("hospitalID").toString());
        response.getWriter().write(output);

    }

}
