<%-- 
    Document   : get_by_category_outcome
    Created on : 23 May 2025, 12:06:45 PM
    Author     : calvin
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.ClientsData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Page</title>
    </head>
    <body>
        <h1>All Clients In Category</h1>
        <%
            List<ClientsData> clients = (List<ClientsData>)request.getAttribute("clients");
        %>
        <p>
            Below is the list of all Glucose Reading Details: 
        </p>
        <table border="1">
            <th><b>No. </b></th>
            <th><b>ID. </b></th>
            <th><b>READING. </b></th>
            <th><b>CATEGORY. </b></th>
            <th><b>READING DATE. </b></th>
            
            <%
                for(int x = 0; x < clients.size(); x++)
                {
                    ClientsData client = clients.get(x);
                    Long id = client.getId();
                    Integer reading = client.getReading();
                    String category = client.getCategory();
                    Date date = client.getReadingDate();
                    
                    %>
                    <tr>
                        <td><%=x+1%></td>
                        <td><%=id%></td>
                        <td><%=reading%></td>
                        <td><%=category%></td>
                        <td><%=date%></td>
                    </tr>
                    <%
                }
            %>
        </table>
        <ul>
            <li><a href="manager_menu.jsp">BACK TO MENU</a></li>
            <li><a href="index.html">GO HOME</a></li>
        </ul>
    </body>
</html>
