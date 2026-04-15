<%-- 
    Document   : processCalculateCarLoan
    Created on : 14 Apr 2026, 2:21:19 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Loan Result</title>
    </head>
    <body>
        <h1>Perform Car Loan Calculation</h1>
        
        <div style="border: 1px solid #ccc; padding: 20px; width: 500px;">
            <h2 style="color: blue;">Details of car loan:</h2>
            
            <%
                // Get data from HTML
                String loanAmountStr = request.getParameter("loanAmount");
                String loanPeriodStr = request.getParameter("loanPeriod");
                
                if (loanAmountStr != null && loanPeriodStr != null) {
                    double loanAmount = Double.parseDouble(loanAmountStr);
                    int period = Integer.parseInt(loanPeriodStr);
                    
                    double interestRate = 0.3;
                    double totalInterest = loanAmount * interestRate * period;
                    double totalLoanWithInterest = loanAmount + totalInterest;
            %>
            
            <p>Loan Request : <%= loanAmount %></p>
            <p>Period of payment : <%= period %></p>
            <p>Total Loan (+ interest) : <%= totalLoanWithInterest %></p>
            
            <%
                }
            %>
        </div>
        
        <p>&copy;2026-Ainaa</p>
    </body>
</html>