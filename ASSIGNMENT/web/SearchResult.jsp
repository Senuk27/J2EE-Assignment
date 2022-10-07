<%-- 
    Document   : SearchResult
    Created on : Oct 7, 2022, 4:11:41 PM
    Author     : HP
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table td{
                padding:10px;
                padding-right: 25px;
            }
            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
                <div class="block1">
              <h3 class="rf">Search Results</h3>
              <table class="t1" border="1">
                     <th>
                            <tr>
                               <td>Date</td>    
                            
                                  <td>Flight No</td> 
                            
                                   <td>Time</td>
                            
                                   <td>From</td>
                            
                                 <td>To</td>
                                 <td>Class</td>
                                 <td>Service</td>
                                 </tr>
                     </th>
                     <tbody>
        <%
            Vector a=(Vector)request.getAttribute("se");
            Enumeration e=a.elements();
            while(e.hasMoreElements()){ %>
            <tr>
                <td>
                <%=e.nextElement() %>
                </td>
                <td> <%=e.nextElement() %></td>
                <td> <%=e.nextElement() %></td>
                <td> <%=e.nextElement() %></td>
                <td> <%=e.nextElement() %></td>
                <td> <%=e.nextElement() %></td>
                <td> <%=e.nextElement() %></td>
            </tr>
           <% }
            

        %>
         
      
        
        
     
                     </tbody>
              </table>

            </tr>
      
        </table>
    </body>
</html>
