<%-- 
    Document   : doLogin.jsp
    Created on : 12 May 2026, 10:30:09?pm
    Author     : Ainaa Nadhirah
--%>

<%@ page import="java.sql.*" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csa3023", "root", "");
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM userprofile WHERE username=? AND password=?");
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            session.setAttribute("user", rs.getString("username"));
            session.setAttribute("fname", rs.getString("firstname"));
            session.setAttribute("lname", rs.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>
