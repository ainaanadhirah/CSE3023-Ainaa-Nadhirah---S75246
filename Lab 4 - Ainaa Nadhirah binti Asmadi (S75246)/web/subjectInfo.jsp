<%-- 
    Document   : subjectInfo
    Created on : 21 Apr 2026, 11:17:17 am
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Subject Information</title>
</head>
<body>
    <h2 class="form-title">Calling Subject.Jsp Page</h2>
    <p>Code: <%= request.getParameter("code") %></p>
    <p>Subject: <%= request.getParameter("subject") %></p>
    <p>Credit: <%= request.getParameter("credit") %></p>
</body>
</html>
