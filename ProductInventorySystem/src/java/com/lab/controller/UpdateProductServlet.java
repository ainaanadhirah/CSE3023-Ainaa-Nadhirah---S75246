/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

// Class UpdateProductServlet
package com.lab.controller;

import com.lab.dao.ProductDAO;
import com.lab.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ainaa Nadhirah
 */
public class UpdateProductServlet extends HttpServlet {
    
    private ProductDAO productDAO;
    
    @Override
    public void init() {
        productDAO = new ProductDAO();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateProductServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     * UpdateProductServlet doGet() Method: Display Form for Editing Record
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        int id = Integer.parseInt(request.getParameter("id"));
        
        Product existingProduct = productDAO.selectProduct(id); // Call DAO

        if (existingProduct != null) {
            out.println("<html><head><title>Edit Product</title></head><body>");
            out.println("<h2>Update Product (Using DAO)</h2>");
            out.println("<form action='UpdateProductServlet' method='POST'>");
            
            // Hidden field for ID
            out.println("<input type='hidden' name='id' value='" + existingProduct.getId() + "'>");
            
            out.println("<label for='name'>Product Name:</label>");
            out.println("<input type='text' id='name' name='name' value='" + existingProduct.getName() + "' required><br><br>");
            
            out.println("<label for='category'>Category:</label>");
            out.println("<input type='text' id='category' name='category' value='" + existingProduct.getCategory() + "' required><br><br>");
            
            out.println("<label for='price'>Price (RM):</label>");
            out.println("<input type='number' id='price' name='price' step='0.01' value='" + existingProduct.getPrice() + "' required><br><br>");
            
            out.println("<label for='quantity'>Quantity:</label>");
            out.println("<input type='number' id='quantity' name='quantity' value='" + existingProduct.getQuantity() + "' required><br><br>");
            
            out.println("<input type='submit' value='Update Product'>");
            out.println("</form>");
            out.println("<br><a href='ViewProductServlet'>Cancel</a>");
            out.println("</body></html>");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * Save the updated product data
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        Product product = new Product(id, name, category, price, quantity);
        productDAO.updateProduct(product); // Call DAO
        
        // Redirect to the View Servlet after updating
        response.sendRedirect("ViewProductServlet");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Handles product updates";
    } // </editor-fold>

}