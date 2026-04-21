<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:11:45 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UMT BMI Calculator</title>
    </head>
    <body>
        <%
            // 5. Retrieve values using request.getParameter()
            String wStr = request.getParameter("weight");
            String hStr = request.getParameter("height");
    
            double weight = Double.parseDouble(wStr);
            double height = Double.parseDouble(hStr);
            double bmi = 0;
            String category = "";

            // 2. Business Logic: Calculate BMI
            if (height > 0) {
                bmi = weight / (height * height); // Formula: weight / height^2

            // Determine the category of the BMI
            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi <= 25.0) {
                category = "Normal";
            } else {
                category = "Overweight";
            }
            }
        %>
        
        <%-- 6. Use JSP Standard Action to forward the result--%>
        <jsp:forward page="resultBMI.jsp">
            <jsp:param name="bmiValue" value="<%= String.valueOf(bmi) %>" />
            <jsp:param name="bmiCat" value="<%= category %>" />
        </jsp:forward>
        <%@include file="footer.jsp" %>
    </body>
</html>
