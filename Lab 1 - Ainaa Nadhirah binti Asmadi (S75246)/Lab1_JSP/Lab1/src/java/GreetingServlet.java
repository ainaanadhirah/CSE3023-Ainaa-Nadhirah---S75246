/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ainaa Nadhirah
 */
@WebServlet("/GreetingServlet")
public class GreetingServlet extends HttpServlet {

    //doGet() method
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    // Retrieve a request parameter named name
    String name = request.getParameter("name");

    // if the parameter is not provided, set the value to Guest
    if (name == null || name.isEmpty()) { 
        name = "Guest"; 
    }

    request.setAttribute("userName", name);

    // Forward request to JSP named greeting.jsp
    request.getRequestDispatcher("greeting.jsp").forward(request, response);
}
}