<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:21:15 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%> <%-- JSP Page Directive --%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UMT BMI Calculator</title>
    </head>
    <body>
        
        <div class="card">
            <h2 class="form-title">BMI Reference Table</h2>
            <table border="1" width="100%" style="border-collapse: collapse;">
                <tr style="background-color: purple; color: white;">
                    <th>Category</th>
                    <th>Range</th>
                </tr>
                <%
                    // Use ArrayList to store category
                    ArrayList<String[]> info = new ArrayList<>();
                    info.add(new String[]{"Underweight", "< 18.5"});
                    info.add(new String[]{"Normal", "18.5 - 25.0"});
                    info.add(new String[]{"Overweight", "> 25.0"});
                    
                    for(String[] row : info) {
                %>
                
                <tr>
                    <td style="padding: 10px;"><%= row[0] %></td>
                    <td style="padding: 10px;"><%= row[1] %></td>
                </tr>
                <% 
                    } 
                %>
            </table>
        </div>
                <%@include file="footer.jsp" %>
    </body>
</html>
