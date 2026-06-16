<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:08:01 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UMT BMI Calculator</title>
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">BMI Input Form</h2>
            <form action="processBMI.jsp" method="POST">
                
                <div class="form-group">
                    <label>Weight (kg):</label>
                    <input type="number" step="0.01" name="weight" placeholder="E.g. 70.5" required>
                </div>
                
                <div class="form-group">
                    <label>Height (m):</label>
                    <input type="number" step="0.01" name="height" placeholder="E.g. 1.75" required>
                </div>
        
                <div class="button-group">
                    <input type="submit" value="Calculate BMI">
                    <input type="reset" value="Reset">
                </div>
            </form>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
