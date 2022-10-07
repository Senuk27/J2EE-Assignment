<%-- 
    Document   : StaffFlights
    Created on : Oct 4, 2022, 8:39:38 PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@600&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                margin: 0;
                background-image: url("fsb.png");
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
                margin-right: 50px;
                margin-left: -120px;
                
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
            .page{
width: 523px;
box-sizing: border-box;
margin-top: 20px;
width: 523px;
height: 580px;
background: #5D99BD;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 22px;
color:#FFFFFF;
font-family: 'inter';
}


table{
    text-align: right;
    font-size:20px;
    font-style: normal;
    line-height: 55px;
    font-weight: 400;
    border-color:#FFFFFF;
    
}
h1{
    text-align: center;
    font-family: 'Inter';
}
table td{
    padding-left: 50px;
}
table input{
    background:#5D99BD;
    border-color: #FFFFFF;
    border-width: 3.36px;
}

table td input{
    width: 220px;
    border: 1px white solid;
    height: 30px;
    border-radius: 22px;
    color: white;
    text-align: center;
    font-family: 'inter';
}
.bttn{
    font-family: 'inter';
    margin-left: 260px;
    width:230.36px;
    height:30px; 
    border: 1px solid #FFFFFF;
    border-radius: 22px;
    
}
.bttn:hover{
    background-color: #C5DEEC;
}
.page h1{
    font-weight: 700;
    font-style: normal;
    font-size:33px;
    padding: 30px;
   
    margin-bottom: -60px;
}
#date{
    float:right;
    margin-top:-40px;
    font-size: 15px;
}

         </style>
    </head>
    <body>
    

         <div class="header">
            <img src="logo (1).png" width="200" height="100" alt="logo" id="logo"/>
           
           <a  href="ManageStaff.jsp"style="padding:15px 38px 15px 38px;">MANAGE</a>
           <a  href="StaffFlights.jsp" style="padding:15px 35px 15px 35px;">FLIGHTS</a>
           <a  href="StaffDashboard.jsp">DASHBOARD</a>
           <a  href="chat.jsp" style="padding:15px 52px 15px 52px;">CHAT</a>
           <a  href="profile.jsp" style="padding:15px 40px 15px 40px;">PROFILE</a>
           

        </div>
        <a href="home.html"><img style="float:left; margin-left: 100px; margin-top: 25px;" src="image 16.png" width="44" height="39" alt="image 16"/></a>
        
        <div class="line">
             <div class='flight' >
                 <h1>Flights</h1><h2 id="date">10-07-2022</h2>
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
        
        String time=rs.getString("time");
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
                <div class='button'><a style="padding-left:20px; padding-right: 20px; " id='edit' href="edit.class">EDIT</a>
                    <a id='edit' href="edit.class">DELETE</a></div>
                    </br>
                    </br> </br>
                            <%
        
    }}
        catch(Exception ex){
    
        }        
        
        
        %>
                 
               
            </div>
        
        <div class="page">
   
        
  <h1 >Add new flights</h1>
        

  <form action="AddFlight" method="POST">
                <table>
                <tr>
           <td><lable for="Departs from"> Departs from<br></td>
            <td><input type="text" id="Departs from" name="depart"></td>
                
                </tr>
            <tr>
           <td><lable for="Arrives to">Arrives to</lable></td>
           <td><input type="text" id="Arrives to" name="arrive"><br></td>
           </tr>
            <tr>
            <td><lable for="Date">Date</lable><br></td>
            <td><input type="date" id="Date" name="date"><br></td>
            </tr>
            <tr>
            <td><lable for="Time">Time</lable><br></td>
            <td><input type="time" id="Time" name="time"><br></td>
            </tr>
            <tr>
           <td><lable for="Class">Class</lable><br></td>
            <td><input type="text" id="Class" name="class"><br></td>
            </tr>
            <tr>
            <td><lable for="In flights service">In flights service</lable></td>
            <td><input type="text" id="In flights service" name="service"></td><br><br><br>
            
            </table>
            <br><br>
            <input type="submit" value="ADD" class="bttn">
            </form>
        
    </div>
         
    </div>
    </body>
</html>
