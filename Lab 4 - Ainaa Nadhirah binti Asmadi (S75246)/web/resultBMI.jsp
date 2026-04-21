<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 3:18:01 pm
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
            <h2 class="form-title">BMI Result</h2>
            <div class="result-box">
                
                <%-- Display BMI using JSP Expression --%>
                <p><strong>Your BMI:</strong> 
                    <%= String.format("%.2f", Double.parseDouble(request.getParameter("bmiValue"))) %>
                </p>
                <p><strong>Category:</strong> <%= request.getParameter("bmiCat") %></p>
            </div>
            <br>
            <a href="bmiCalculator.jsp" class="btn-back">Calculate Again</a>
        </div>
                <%@include file="footer.jsp" %>
    </body>
</html>
