<%-- 
    Document   : get_clients_by_range
    Created on : 23 May 2025, 12:25:32 PM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get By Range Page</title>
    </head>
    <body>
        <h1>Get Clients Within range</h1>
        <p>
            Enter Range Details below:
        </p>
        <form action="GetClientsByRangeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Minimum Reading</td>
                    <td><input type="text" name="min" required=""/></td>
                </tr>
                <tr>
                    <td>Maximum Reading</td>
                    <td><input type="text" name="max" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET CLIENTS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
