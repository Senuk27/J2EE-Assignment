<%-- 
    Document   : StaffDashboard
    Created on : Oct 3, 2022, 8:36:46 PM
    Author     : HP
--%>

<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet">
        
        <title>JSP Page</title>
        <style>
            body{
                margin: 0;
                background-image: url("staffdash.png");
                background-size: 1580px;
                background-repeat: no-repeat;
            }
            .header{
                height: 15px;
                background-color: white;
                padding-top: 50px;
                height: 80px;
            }
            .header img{
                float: left;
                margin-top: -15px;
                margin-left: 50px;
            }
            #logo{
                margin-top: -25px;
            }
            .header a{
                
                background-color: #C5DEEC;
                text-decoration: none;
                color: black;
                padding: 20px;
                border-radius: 30px;
                padding-top: 15px;
                padding-bottom: 15px;
                margin-left: 80px;
                font-size: 18px;
                font-family: 'Inter';
                box-shadow: 1px 5px 10px #D8D8DB;
            }
            .header a:hover{
                background-color:  #D8D8DB;
            }
            .dash{
                margin-top: 30px;
                height: 530px;
                background-color: white;
                padding: 20px;
                color: #626060;
                font-family: 'inter';
                justify-content: center;
                width: 300px;
                text-align: center;
                border-radius: 22px;
                margin-left: -110px;
            }
            .dash h1{
                font-size: 28px;
            }
            .dash p{
                margin: auto;
                width: 250px;
                border-radius: 22px;
                background-color:#F1E4DA;
                height: 35px;
                margin-top: 20px;
                padding-top: 10px;
 
            }
            .dash p:hover{
                background-color: #DFA58E;
            }
            #first{
                margin-top: 30px;
            }
            .dash a{
                text-decoration: none;
                color: #626060;
               font-size: 20px;
            }
            .flight h1{
                font-size: 28px;
                margin-left: 30px;
            }
            .flight{
                height: 580px;
                background-color: white;
                width: 600px;
                margin-left: 50px;
                font-family: 'inter';
                color: #626060;
                border-radius: 22px;
                margin-top: 20px;
                padding-left: 30px;
                padding-right: 30px;
                
            }
            .flightline img{
                margin-top: 45px;
                margin-left: 20px;
                margin-right: 20px;
                
            }
            .line{
                justify-content: center;
                display: flex;
                margin-top: 50px;
                margin-bottom: 50px;
            }
            .ticket{
                background-color: #5D99BD;
                padding: 20px;
                width: 120px;
                border-radius: 9px;
                text-align: center;
                color:white;
                margin-left: 50px;
            }
            .ticket a{
                text-decoration: none;
                color: white;
            }
            .flightline{
                border: 1px solid;
                border-radius: 9px;
                padding: 10px;
                display: flex;
                padding-left: 20px;
                
                
            }
            .flightline h1{
                font-size: 16px;
            }
            .flightline span{
                font-size: 10px;
                display: inline-block;
                height: 0;
            }
            #edit{
                text-decoration: none;
                background-color: #F1E4DA;
                color: #626060;
                padding: 10px;
                border-radius: 14px;
                font-size: 10px;
                margin-left: 20px;
            }
            #edit:hover{
                background-color: #DFA58E;
            }
            .button{
                margin-top: 20px;
                float: right;
                
            }
            .search{
                background-color: white;
                width: 250px;
                  color: #626060;
                font-family: 'inter';
                height: 300px;
                margin-top: 150px;
                margin-left: 50px;
                text-align: center;
                border-radius: 22px;
            }
            .search h2{
                font-size: 15px;
                padding-top: 10px;
                padding-bottom: 10px;
                margin-left: -25px;
                
            }
            
            .search p{
                margin-top:7px;
                 margin-bottom:7px;
            }
        </style>
    </head>
    <body>
        <%String user="staff";%>
        
          <div class="header">
            <img src="logo (1).png" width="200" height="100" alt="logo" id="logo"/>
           <% if (user=="staff"){ %>
                <a  href="ManageStaff.jsp"style="padding:15px 38px 15px 38px;">MANAGE</a>
           
           <%}%>
          
           <a  href="StaffFlights.jsp" style="padding:15px 35px 15px 35px;">FLIGHTS</a>
           <a  href="StaffDashboard.jsp">DASHBOARD</a>
           <a  href="chat.jsp" style="padding:15px 52px 15px 52px;">CHAT</a>
           <a  href="profile.jsp" style="padding:15px 40px 15px 40px;">PROFILE</a>
           

        </div>
        <a href="home.html"><img style="float:left; margin-left: 100px; margin-top: 25px;" src="image 16.png" width="44" height="39" alt="image 16"/></a>
        <a href="ClientDashboard.jsp"><img style="float:right; margin-left: 100px; margin-top: 25px;" src="Group 363USER VIEW.png" width="44" height="39" alt="image 16"/></a>
    
            <div class="line">
            <div class="dash">
                <h1>Dashboard</h1>
                <% if (user=="client"){ %>
                <img src="clientpro.png" width="90" height="90" alt="Ellipse 16"/>
                <%}%>
                <% if (user=="staff"){ %>
                <img src="Ellipse 16.png" width="90" height="90" alt="Ellipse 16"/>
                <%}%>
                <p id='first'><a href="chat.jsp">Chat</a></p>
                <% if (user=="client"){ %>
                <p><a href="chat.jsp">Profile</a></p>
                <%}%>
                 <% if (user=="staff"){ %>
                <p><a href="chat.jsp">Manage</a></p>
                <%}%>
                <p><a href="chat.jsp">Flights</a></p>
                <p><a href="chat.jsp">Settings</a></p>
                <p><a href="chat.jsp">FAQs</a></p>
            </div>
                
            <div class='flight' >
                <h1>Flights</h1>
                <%
            Statement st;
             String url="jdbc:mysql://localhost:3306/phoenixairlines";
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
        String sql="select * from flights ";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
        String depart=rs.getString("depart");
        String arrive=rs.getString("arrive");
        String date=rs.getString("date");
        int id=rs.getInt("flight_id");
        String time=rs.getString("time");
        String classs=rs.getString("class");
        String service=rs.getString("service");
        %>
                <div class='flightline'>
                    <h3><%=depart%>
                        </br><span><%=time%> IST</br>Departs</span></h3>
                    <img src="Arrow 5.png" width="150" height="10" alt="Arrow 5"/>
                    <h3><%=arrive%>
                        </br><span>04.00 IST</br>Arrives</span></h3>
                    <div class="ticket">
                        5 tickets</br><a href=''> Flight Details</a>
                    </div>
                </div>
                <div class='button'><a style="padding-left:20px; padding-right: 20px; " id='edit' href="edit.html">EDIT</a>
                    
                    <a id='edit' href="delete.jsp">DELETE</a></div>
                    
                    </br>
                    </br> </br>
                                             <%
        
    }}
        catch(Exception ex){
    
        }        
        
        
        %>
                 
               
            </div>
   
            
                
                
                  <div class="search">
                      <h2>Search user accounts</h2>
                      <hr/>
                      <form action="SearchUser">
                      <input style="height: 30px;
                border-radius: 22px;
                border: 1px black solid;
                margin-top: 30px;
               width: 120px;
               padding-left: 55px;" type="text" name="uname" placeholder='User Name' />
                      <p>or</p>
                      <input style="height: 30px;
                border-radius: 22px;
                border: 1px black solid;
                margin-top: 30px;
               width: 120px;
               padding-left: 55px; margin-top: 0px; padding-left: 60px; width: 110px;" type="text" name="uid" placeholder='User ID' />
                      <div class='button'><input type="reset" style="padding-left:15px; padding-right: 15px; " id='edit' value="CANCEL">
                          <input type="submit" style="margin-right: 40px; padding-left: 20px; padding-right: 20px;" id='edit' value="ENTER"></div>
                    </form>
            </div>
                
        </div>
    </body>
</html>
