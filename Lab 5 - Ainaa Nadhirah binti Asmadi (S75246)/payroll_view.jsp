<%-- 
    Document   : payroll_view
    Created on : 29 Apr 2026, 3:39:09 pm
    Author     : Ainaa Nadhirah
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Payroll Display System</title>
</head>
<body>
    <h2>Employee Payroll Display System</h2>
    
    <table border="1" cellpadding="8">
        <thead>
            <tr style="background-color: lightblue;">
                <th>Employee ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Basic Salary (RM)</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employeeList}">
                <tr>
                    <td>${employee.empId}</td>
                    <td>${employee.name}</td>
                    <td>${employee.department}</td>
                    <td>
                        <fmt:formatNumber value="${employee.basicSalary}" pattern="#,##0.00"/>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.basicSalary >= 3000}">
                                <strong>Senior</strong>
                            </c:when>
                            <c:otherwise>
                                Junior
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>