<%-- 
    Document   : manager_menu
    Created on : 23 May 2025, 11:52:09 AM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Page</title>
    </head>
    <body>
        <h1>Manager's Menu</h1>
        <p>
            Please select the option you'd like to perform:
        </p>
        <ul>
            <li><a href="get_clients_by_category.jsp">GET CLIENTS BY CATEGORY</a></li>
            <li><a href="GetHigestReadingClientsServlet.do">GET A CLIENT WITH THE HIGHEST READING</a></li>
            <li><a href="get_avg_of_client.jsp">GET THE AVERAGE OF A SPECIFIC CLIENT</a></li>
            <li><a href="get_clients_by_range.jsp">GET CLIENTS BY GLUCOSE READING RANGE</a></li>
        </ul>
    </body>
</html>
