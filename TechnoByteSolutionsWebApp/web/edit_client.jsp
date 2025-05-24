<%-- 
    Document   : edit_client
    Created on : 23 May 2025, 11:26:28 AM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Details Page</title>
    </head>
    <body>
        <h1>Modify Specific Reading</h1>
        <p>
            Enter Client's ID below:
        </p>
        <form action="SearchClientServlet.do" method="POST">
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
