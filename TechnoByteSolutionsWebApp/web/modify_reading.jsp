<%-- 
    Document   : modify_reading
    Created on : 23 May 2025, 11:36:38 AM
    Author     : calvin
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.ClientsData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Reading Page</title>
    </head>
    <body>
        <h1>Modify Reading</h1>
        <%
            ClientsData client = (ClientsData)request.getAttribute("client");
            Long id = client.getId();
            String category = client.getCategory();
            Integer reading = client.getReading();
            Date date = client.getReadingDate();
        %>
        <p>
            You can modify the reading below:
        </p>
        <form action="ModifyDataServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%=id%>" readonly=""/></td>
                </tr>
                <tr>
                    <td>Glucose Reading</td>
                    <td><input type="text" name="reading" value="<%=reading%>" required=""/></td>
                </tr>
                <tr>
                    <td>Category</td>
                    <td><input type="text" name="reading" value="<%=category%>" readonly=""/></td>
                </tr>
                <tr>
                    <td>Reading Date</td>
                    <td><input type="text" value="<%=date%>" readonly=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="MODIFY"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
