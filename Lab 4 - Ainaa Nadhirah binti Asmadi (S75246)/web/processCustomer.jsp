<%-- 
    Document   : processCustomer
    Created on : 21 Apr 2026, 10:55:07 am
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Transaction Summary</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <%
            // Fixed price
            final double price = 10.0; 

            // etrieve form data
            String cust_no = request.getParameter("customerCode");
            String cust_type = request.getParameter("customerType"); 
            
            int quantity = 0;
            try {
                quantity = Integer.parseInt(request.getParameter("quantity"));
            } catch (Exception e) {
                quantity = 0; 
            }

            // Business Logic
            double total = 0;
            String message = "";
            
            if (cust_type.equals("1") && quantity > 100) {
                message = "You're entitled to 10% discount";
                total = quantity * price * 0.9;
            } 
            else if (cust_type.equals("2") && quantity > 100) {
                message = "You're entitled to 25% discount";
                total = quantity * price * 0.75;
            }
            else {
                message = "You're not entitled to any discount"; 
                total = quantity * price;
            }

            //Display customer type
            String custTypeDisplay = cust_type.equals("1") ? "Normal Customer" : "Privilege Customer";
        %>

        <div class="container">
            <h1>Customer Discount Result</h1>
            <div class="card">
                <h2 class="form-title">Transaction Summary</h2>

                    <label>Customer Code:</label>
                    <p>Customer Code:<%= cust_no %></p> 
                
                    <label>Quantity:</label>
                    <p><%= quantity %></p>

                    <label>Customer Type:</label>
                    <p><%= custTypeDisplay %></p>
                    
                    <label>Status:</label>
                    <p><%= message %></p>

                    <label>Total Amount:</label>
                    <p>RM <%= String.format("%.2f", total) %></p>

                <br>
                <button onclick="window.history.back()" class="btn-back">Back</button>
            </div>
        </div>
    </body>
</html>