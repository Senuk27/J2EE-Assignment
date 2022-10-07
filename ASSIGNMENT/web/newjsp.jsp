<%-- 
    Document   : newjsp
    Created on : Sep 10, 2022, 6:30:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="servlett" method="POST">
            <select name="user">
                <option value="not">Select one</option>
                <option value="client"></option>
                <option value="staff" ></option>
                <option value="admin"></option>
            </select>
           
        </form>
        
    </body>
</html>
