<%-- 
    Document   : insuranceQuotation
    Created on : 21 Apr 2026, 2:37:46 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation System</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="container">
            <h1>Insurance Quotation</h1>
            <div class="card">
                <h2 class="form-title">Insurance Calculation</h2>
                <form action="processInsuranceQuo.jsp" method="POST">
                    
                    <div class="form-group">
                        <label>IC No:</label>
                        <input type="text" name="icno" placeholder="E.g. 821210-05-3478" required>
                    </div>

                    <div class="form-group">
                        <label>Name:</label>
                        <input type="text" name="name" placeholder="Enter name" required>
                    </div>

                    <div class="form-group">
                        <label>Market Price (RM):</label>
                        <input type="number" step="0.01" name="price" placeholder="Price" required>
                    </div>

                    <div class="form-group">
                        <label>Coverage Type:</label>
                        <select name="coverage">
                            <option value="comprehensive">Comprehensive</option>
                            <option value="thirdparty">Third Party</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>No Claims Discount (NCD):</label>
                        <select name="ncd">
                            <option value="0.0">0%</option>
                            <option value="0.25">25%</option>
                            <option value="0.30">30%</option>
                            <option value="0.3845">38.45%</option>
                            <option value="0.45">45%</option>
                            <option value="0.55">55%</option>
                        </select>
                    </div>

                    <div class="button-group">
                        <input type="submit" value="Submit">
                        <input type="reset" value="Cancel">
                    </div>
                    
                </form>
            </div>
        </div>
    </body>
</html>