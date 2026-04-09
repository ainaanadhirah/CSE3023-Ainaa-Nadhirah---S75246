/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ViewProductServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO dao = new ProductDAO();
        List<Product> productList = dao.selectAllProducts();

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Inventory List</title></head><body>");
        out.println("<h2>Product Inventory List</h2>");
        out.println("<table border='1' cellpadding='5'><tr>" +
                    "<th>ID</th><th>Name</th><th>Category</th><th>Price (RM)</th><th>Quantity</th><th>Actions</th></tr>");

        for (Product p : productList) {
            out.println("<tr>");
            out.println("<td>" + p.getId() + "</td>");
            out.println("<td>" + p.getName() + "</td>");
            out.println("<td>" + p.getCategory() + "</td>");
            out.println("<td>RM " + String.format("%.2f", p.getPrice()) + "</td>");
            out.println("<td>" + p.getQuantity() + "</td>");
            // Links for Edit and Delete
            out.println("<td>" +
                    "<a href='UpdateProductServlet?id=" + p.getId() + "'>Edit</a> | " +
                            "<a href='DeleteProductServlet?id=" + p.getId() + "' onclick=\"return confirm('Are you sure?')\">Delete</a>" +
                                    "</td>");
            out.println("</tr>");
        }

        out.println("</table>");
        out.println("<br><a href='index.html'>Add New Product</a>");
        out.println("</body></html>");
    }
}