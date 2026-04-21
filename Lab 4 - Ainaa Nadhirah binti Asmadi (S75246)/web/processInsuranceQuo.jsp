<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 2:41:52 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insurance Quotation Result</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <%
            // Retrueve form data
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            String coverage = request.getParameter("coverage");
            String ncdStr = request.getParameter("ncd");
            
            double price = 0;
            double ncdRate = 0;
            
            try {
                price = Double.parseDouble(request.getParameter("price"));
                ncdRate = Double.parseDouble(ncdStr);
            } catch (Exception e) {
                price = 0;
                ncdRate = 0;
            }
            
            // Business Logic
            double rate = 0;
            String coverageDisplay = "";
            
            if ("comprehensive".equals(coverage)) {
                rate = 0.05; // 5%
                coverageDisplay = "Comprehensive";
            } else {
                rate = 0.03; // 3%
                coverageDisplay = "Third Party"; 
            }
            
            // Base insurance calculation
            double insurance = price * rate;
            
            // Apply NCD discount
            double discount = insurance * ncdRate; 
            double afterNCD = insurance - discount; 
            
            // Add 8% SST
            double sst = afterNCD * 0.08; 
            double finalAmount = afterNCD + sst; 
        %>

        <div class="container">
            <h1>Insurance Quotation Result</h1>
            <div class="card">
                    <label>IC No:</label>
                    <p><%= icno %></p>
                    
                    <label>Name:</label>
                    <p><%= name %></p>
                    
                    <label>Market Price (RM):</label>
                    <p><%= String.format("%.2f", price) %></p>

                    <label>Coverage Type:</label>
                    <p><%= coverageDisplay %></p>

                    <label>NCD:</label>
                    <p><%= (int)(ncdRate * 100) %>%</p>
                
                <hr>

                    <label>Base Insurance:</label>
                    <p>RM <%= String.format("%.2f", insurance) %></p>

                    <label>NCD Discount:</label>
                    <p>RM <%= String.format("%.2f", discount) %></p>

                    <label>After NCD:</label>
                    <p>RM <%= String.format("%.2f", afterNCD) %></p>

                    <label>SST (8%):</label>
                    <p>RM <%= String.format("%.2f", sst) %></p>

                    <label><strong>Final Insurance Amount:</strong></label>
                    <p><strong>RM <%= String.format("%.2f", finalAmount) %></strong></p>
                
                <br>
                <button onclick="window.history.back()" class="btn-back">Back</button>
            </div>
        </div>
    </body>
</html>
