<%-- 
    Document   : clients_menu
    Created on : 23 May 2025, 10:47:37 AM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Page</title>
    </head>
    <body>
        <h1>Client's Menu</h1>
        <p>
            Please select the option you'd like to perform:
        </p>
        <ul>
            <li><a href="add_reading.jsp">UPLOAD GLUCOSE READING</a></li>
            <li><a href="GetClientsServlet.do">GET ALL RECORDS</a></li>
            <li><a href="edit_client.jsp">EDIT EXISTING GLUCOSE READING</a></li>
        </ul>
    </body>
</html>
