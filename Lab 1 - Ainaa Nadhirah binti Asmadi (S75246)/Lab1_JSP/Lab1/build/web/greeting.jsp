<%-- 
    Document   : greeting
    Created on : 31 Mar 2026, 9:32:18 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Greeting Page</title>
    </head>
    <body>
        <h1>Hello, <%= request.getAttribute("userName") %>!</h1>
        
        <p>
            <%
            // Display current date and time
            Date currentDate = new Date();
            out.println("<p>Current date and time is " + currentDate.toString() + "</p>");
            %>
            
        </p>
        
        <% 
            // Auto refresh after 5 second
            response.setIntHeader("Refresh", 5); 
        %>
    </body>
</html>