<%-- 
    Document   : main
    Created on : 12 May 2026, 10:30:47 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Small internal tweak for the dashboard layout */
        .info-box {
            text-align: left;
            margin: 20px 0;
            padding: 10px;
            background: #f9f9f9;
            border-left: 4px solid #4CAF50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Profile</h2>
        <div class="info-box">
            <p><strong>Full Name:</strong> <%= session.getAttribute("fname") %> <%= session.getAttribute("lname") %></p>
            <p><strong>Username:</strong> <%= session.getAttribute("user") %></p>
        </div>
        <input type="submit" value="Logout" onclick="location.href='login.jsp'" style="background-color: #d9534f;">
    </div>
</body>
</html>