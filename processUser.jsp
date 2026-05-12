<%-- 
    Document   : processUser
    Created on : 12 May 2026, 10:28:45?pm
    Author     : Ainaa Nadhirah
--%>

<%@ page import="java.sql.*" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csa3023", "root", "");
        PreparedStatement ps = conn.prepareStatement("INSERT INTO userprofile VALUES (?, ?, ?, ?)");
        ps.setString(1, user);
        ps.setString(2, pass);
        ps.setString(3, fname);
        ps.setString(4, lname);
        ps.executeUpdate();
        out.println("Registration successful! <a href='login.jsp'>Login here</a>");
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
