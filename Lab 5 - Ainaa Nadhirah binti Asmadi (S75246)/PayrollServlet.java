/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Ainaa Nadhirah
 */

@WebServlet("/payroll")
public class PayrollServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Employee> employeeList = new ArrayList<>();

        // Employee 1
        Employee emp1 = new Employee();
        emp1.setEmpId("E001");
        emp1.setName("Ahmad Faizal");
        emp1.setDepartment("Information Technology");
        emp1.setBasicSalary(4500.00);
        employeeList.add(emp1);

        // Employee 2
        Employee emp2 = new Employee();
        emp2.setEmpId("E002");
        emp2.setName("Siti Aminah");
        emp2.setDepartment("Human Resources");
        emp2.setBasicSalary(2800.00);
        employeeList.add(emp2);

        // Employee 3
        Employee emp3 = new Employee();
        emp3.setEmpId("E003");
        emp3.setName("Lee Wei");
        emp3.setDepartment("Finance");
        emp3.setBasicSalary(5200.00);
        employeeList.add(emp3);

        // Employee 4
        Employee emp4 = new Employee();
        emp4.setEmpId("E004");
        emp4.setName("Raju a/l Kumar");
        emp4.setDepartment("Operations");
        emp4.setBasicSalary(3200.00);
        employeeList.add(emp4);

        // Employee 5
        Employee emp5 = new Employee();
        emp5.setEmpId("E005");
        emp5.setName("Muhammad Ali");
        emp5.setDepartment("Marketing");
        emp5.setBasicSalary(2500.00);
        employeeList.add(emp5);

        request.setAttribute("employeeList", employeeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/payroll_view.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}