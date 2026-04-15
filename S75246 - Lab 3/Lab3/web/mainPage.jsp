<%-- 
    Document   : mainPage
    Created on : 14 Apr 2026, 2:47:28 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Main Page</title>
</head>
<body>

    <%@ include file="headerPage.jsp" %>

    <div style="padding:20px;">
        <h2>Using JSP Include directive</h2>

        <p style="color:red;">
            Java Server Page (JSP) is a technology for controlling the content<br>
            or appearance of Web pages through the use of servlets, small<br>
            programs that are specified in the Web page and run on the Web server<br>
            to modify the Web page before it is sent to the user who requested it.
        </p>
    </div>

    <%@ include file="footerPage.jsp" %>

</body>
</html>