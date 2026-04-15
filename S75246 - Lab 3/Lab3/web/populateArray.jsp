<%-- 
    Document   : populateArray
    Created on : 14 Apr 2026, 1:50:35 pm
    Author     : Ainaa Nadhirah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Summary</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
            }
            /* Center the heading */
            h2 {
                text-align: center;
            }
            /* Center the table using margins */
            table {
                margin-left: auto; 
                margin-right: auto;
                border-collapse: collapse;
                width: 60%;
            }
            th, td {
                padding: 8px;
                text-align: center;
            }
            .copyright {
                text-align: left;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <h2>Read Java array and populate it into HTML table.</h2>

        <%
            // Step 2: Store info into an array
            String[][] salesData = {
                {"Salesman 1", "2500", "2100", "2200"},
                {"Salesman 2", "2000", "1900", "2400"}, 
                {"Salesman 3", "1800", "2200", "2450"}
            };
            
            String[] headers = {"Salesman", "Jan", "Feb", "Mar"};
        %>

        <table border="1">
            <thead>
                <tr>
                    <% for(String h : headers) { %>
                        <th><%= h %></th>
                    <% } %>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i < salesData.length; i++) { %>
                    <tr>
                        <% for(int j = 0; j < salesData[i].length; j++) { %>
                            <td><%= salesData[i][j] %></td>
                        <% } %>
                    </tr>
                <% } %>
            </tbody>
        </table>

        <p class="copyright">&copy;2026-Syaffiq</p>
    </body>
</html>