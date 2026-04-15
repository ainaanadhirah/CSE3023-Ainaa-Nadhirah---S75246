<%-- 
    Document   : processRegistration
    Created on : 14 Apr 2026, 3:41:25?pm
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
        <%@ include file="header.jsp" %>
        <h2>Registration Successful</h2>
        
        <%
            // 1. Retrieve data from the submitted form
            String name = request.getParameter("studentName");
            String matric = request.getParameter("matricNo");
            String club = request.getParameter("club");

            // 2. Retrieve the existing ArrayList from the Session
            // We use "sessionMembers" as the unique key for this data
            ArrayList<String> memberList = (ArrayList<String>) session.getAttribute("sessionMembers");

            // 3. If the session just started (list is null), create a new ArrayList
            if (memberList == null) {
                memberList = new ArrayList<String>();
            // Add the initial committee members
            memberList.add("Ainaa Nadhirah");
            memberList.add("Ahmad Zaki");
            memberList.add("Siti Aminah");
            memberList.add("Lee Wei");
            memberList.add("Tanushree");
            }

            // 4. Add the newly registered student's name to the list
            if (name != null && !name.isEmpty()) {
                memberList.add(name);
            }
            
            // 5. Save the updated list back into the session
            session.setAttribute("sessionMembers", memberList);
        %>
        
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Matric No:</strong> <%= matric %></p>
        <p><strong>Club:</strong> <%= club %></p>

        <p style="color: green;">Data has been successfully saved to the directory!</p>
        <a href="memberDirectory.jsp">View Member Directory</a><br>
        
        <%@ include file="footer.jsp" %>
    </body>
</html>
