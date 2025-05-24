<%-- 
    Document   : add_reading
    Created on : 23 May 2025, 10:51:50 AM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reading Page</title>
    </head>
    <body>
        <h1>Upload Glucose Reading</h1>
        <p>
            Enter Client's Info below:
        </p>
        <form action="AddDataServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                <tr>
                    <td>Glucose Reading</td>
                    <td><input type="text" name="reading" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
