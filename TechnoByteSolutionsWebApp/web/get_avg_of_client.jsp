<%-- 
    Document   : get_avg_of_client
    Created on : 23 May 2025, 12:17:45 PM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Id Page</title>
    </head>
    <body>
        <h1>Average of a Client</h1>
        <p>
            Enter Client's ID below:
        </p>
        <form action="AverageOfClientServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
