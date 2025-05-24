<%-- 
    Document   : highest_reading_outcome
    Created on : 23 May 2025, 12:14:02 PM
    Author     : calvin
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.ClientsData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Highest reading Page</title>
    </head>
    <body>
        <h1>Highest Reading Client</h1>
        <%
            ClientsData client = (ClientsData)request.getAttribute("client");
            Long id = client.getId();
            String category = client.getCategory();
            Integer reading = client.getReading();
            Date date = client.getReadingDate();
        %>
        <p>
            Below is the client with the highest Glucose reading.
        </p>
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" value="<%=id%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Glucose Reading</td>
                <td><input type="text" value="<%=reading%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" value="<%=category%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Reading Date</td>
                <td><input type="text" value="<%=date%>" readonly=""/></td>
            </tr>
        </table>
        <ul>
            <li><a href="manager_menu.jsp">BACK TO MENU</a></li>
            <li><a href="index.html">GO HOME</a></li>
        </ul>
    </body>
</html>