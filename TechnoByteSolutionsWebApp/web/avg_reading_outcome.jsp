<%-- 
    Document   : avg_reading_outcome
    Created on : 23 May 2025, 12:23:27 PM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Average Outcome Page</title>
    </head>
    <body>
        <h1>Client's Average Outcome</h1>
        <%
            Double avg = (Double)request.getAttribute("avg");
        %>
        <p>
            Client's Average is <b><%=avg%></b> .
        </p>
        <ul>
            <li><a href="manager_menu.jsp">BACK TO MENU</a></li>
            <li><a href="index.html">GO HOME</a></li>
        </ul>
    </body>
</html>

