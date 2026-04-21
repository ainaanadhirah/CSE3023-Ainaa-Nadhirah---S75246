<%-- 
    Document   : forward
    Created on : 21 Apr 2026, 2:27:00 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action (Forward)</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Using jsp:forward to display user information</h1>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="uname" value="Wan Nural Jawahir Hj Wan Yussof" />
            <jsp:param name="email" value="wannurwy@umt.edu.my" />
            <jsp:param name="nationality" value="Malaysia" />
            <jsp:param name="background" value="Lecturer" />
        </jsp:forward>
    </body>
</html>
