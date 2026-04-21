<%-- 
    Document   : forwardInfo
    Created on : 21 Apr 2026, 2:28:50 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forward Information</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="container">
            <h1>Using jsp:forward to display user info</h1>
            
            <div class="card">
                <h2 class="form-title">Forwarded Info</h2>
                <%
                    String name = request.getParameter("uname");
                    String email = request.getParameter("email");
                    String nationality = request.getParameter("nationality");
                    String background = request.getParameter("background");
                %>
                
                <p>Name: <%= name %></p>
                <p>Email: <%= email %></p>
                <p>Nationality: <%= nationality %></p>
                <p>Background: <%= background %></p>
            </div>
        </div>
    </body>
</html>
