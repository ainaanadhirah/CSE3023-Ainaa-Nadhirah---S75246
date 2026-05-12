<%-- 
    Document   : login
    Created on : 12 May 2026, 10:29:42 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <% if(request.getParameter("msg") != null) { %>
            <p class="message"><%= request.getParameter("msg") %></p>
        <% } %>
        
        <form action="doLogin.jsp" method="post">
            <label>Username</label>
            <input type="text" name="username" required>
            
            <label>Password</label>
            <input type="password" name="password" required>
            
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>