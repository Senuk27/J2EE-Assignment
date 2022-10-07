<%-- 
    Document   : DeletedFlights
    Created on : Oct 7, 2022, 6:25:34 PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        
            <tr>
                <td>Flight ID</td>
                 <td>Staff ID</td>
                  <td>Departs</td>
                   <td>Arrives</td>
                    <td>Date</td>
                     <td>Time</td>
                       
            </tr>
            
        <% Statement st;
                String url="jdbc:mysql://localhost:3306/phoenixairlines";
        try {
           
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
        
        String sql="select * from deleted_flights";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
            %>
            <tr>
                <td><%=rs.getInt("flight_id")%></td>
                <td><%=rs.getInt("staff_id")%></td>
                <td><%=rs.getString("depart")%></td>
                <td><%=rs.getString("arrive")%></td>
                <td><%=rs.getString("date")%></td>
                <td><%=rs.getString("time")%></td>
            </tr>
            <%
        }
        
    }
    catch(ClassNotFoundException|SQLException ex){
    
        }  
        %>
        
    
</html>
