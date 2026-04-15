<%-- 
    Document   : registerClub
    Created on : 14 Apr 2026, 3:12:14 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Club Recruitment</title>
    </head>
    <body>
      <%@ include file="header.jsp" %>
      <h2>Student Club Registration</h2>
      <form action="processRegistration.jsp" method="POST">
          <label for="studentName">Name:</label>
          <input type="text" id="studentName" name="studentName" required><br><br>
          <label for="">Matric No:</label>
          <input type="matricNo" id="matricNo" name="matricNo" required><br><br>
         
          <label for="club">Selected Club:</label>
          <select id="club" name="club">
              <option value="COMTECH">COMTECH</option>
              <option value="Robotics">Robotics Club</option>
              <option value="CyberSecurity">CyberSecurity Club</option>
          </select><br><br>
          <input type="submit" value="Register">
      </form>
      <%@ include file="footer.jsp" %>  
    </body>
</html>