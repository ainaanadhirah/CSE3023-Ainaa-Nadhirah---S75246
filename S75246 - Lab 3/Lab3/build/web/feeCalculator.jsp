<%-- 
    Document   : feeCalculator
    Created on : 14 Apr 2026, 3:44:53 pm
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
      <h2>Membership Fee Calculator</h2>
      <form method="GET">
          <label for="activityCount">Number of Activities: </label>
          <input type="number" id="activityCount" name="activityCount">
          <input type="submit" value="Calculate">
      </form>
      
      <%
          // 1. Retrieve the input value as a String
          String countStr = request.getParameter("activityCount");
          
          // 2. Check if the input is not null and not empty before calculating
          if (countStr != null && !countStr.isEmpty()) {
              
              // 3. Convert the String input into an Integer
              int count = Integer.parseInt(countStr);
              
              // 4. Calculate the total fee (Number of activities * RM 10)
              double totalFee = count * 10.00;
      %>
      
      <h3>Total Fee: RM <%= String.format("%.2f", totalFee) %></h3>
      
      <%
          }
      %>
      <%@ include file="footer.jsp" %>
    </body>
</html>

