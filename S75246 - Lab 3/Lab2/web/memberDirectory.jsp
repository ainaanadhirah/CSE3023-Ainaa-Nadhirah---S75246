<%-- 
    Document   : memberDirectory
    Created on : 14 Apr 2026, 3:49:31?pm
    Author     : Ainaa Nadhirah
--%>

<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Club Recruitment</title>
    </head>
    <body>
        <h2>Committee & Registered Member Directory</h2>
        <%@ include file="header.jsp" %>
        
        <table border="1" cellpadding="10">
        
        <tr>
        <th>No.</th>
        <th>Member Name</th>
        </tr>
    
        <%
            
        // 1. Retrieve the list from the session
        ArrayList<String> members = (ArrayList<String>) session.getAttribute("sessionMembers");

        // 2. Fallback: If the user opens this page directly without registering first, 
        // the session will be empty. We need to provide the default data.
        if (members == null) {
            members = new ArrayList<String>();
            members.add("Ainaa Nadhirah");
            members.add("Ahmad Zaki");
            members.add("Siti Aminah");
            members.add("Lee Wei");
            members.add("Tanushree");
            
            // Save this default list to the session so it's ready for next time
            session.setAttribute("sessionMembers", members);
        }

        // 3. Loop through the session data and display it
        for(int i = 0; i < members.size(); i++) {
        %>
        
        <tr>
            <td><%= (i + 1) %></td>
            <td><%= members.get(i) %></td>
        </tr>
        <% 
            } 
        %>
        
        </table>
        
        <%@ include file="footer.jsp" %>
    </body>
</html>

