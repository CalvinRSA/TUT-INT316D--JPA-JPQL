<%-- 
    Document   : get_clients_by_category
    Created on : 23 May 2025, 11:56:18 AM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Clients Page</title>
    </head>
    <body>
        <h1>Get Clients By Category</h1>
        <p>
            Enter Category below:
        </p>
        <form action="CategoryClientServlet.do" method="POST">
            <table>
                <tr>
                    <td>CATEGORY</td>
                    <td>
                        <select name="category">
                            <option value="GOOD">GOOD</option>
                            <option value="ACCEPTABLE">ACCEPTABLE</option>
                            <option value="CONCERNING">CONCERNING</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET CLIENTS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
