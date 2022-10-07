<%-- 
    Document   : chat
    Created on : Oct 2, 2022, 1:06:13 PM
    Author     : HP
--%>

<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Vector b=(Vector)request.getAttribute("ms");
        %>
      <form action="myservlet" method="post">
           Name <input type="text" name="user"  />
           Text <textarea name="msg"  /></textarea>
            <input type="submit" value="submit" />
        </form>
    </body>
</html>
