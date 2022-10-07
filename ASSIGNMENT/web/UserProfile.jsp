<%-- 
    Document   : UserProfile
    Created on : Oct 7, 2022, 1:11:18 PM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@600&display=swap" rel="stylesheet">
        <title>JSP Page</title>
        <style>
                      
            body {
    background-image: url("profileback.png");
     background-size: 1580px;
                background-repeat: no-repeat;
                
    font-family: inter;
    margin: 0;
    
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
p {
  word-spacing: 10px;
}

.container {
   
    margin: 0 ;
    display: flex;
}



.regbox{
    width: 350px;
    height: 550px;
    background: #2f3542;
    background-color: white;
    margin: 0;
    padding: 30px;
    top: 55%;
    left: 50%;
    color: #626060;
    border-radius: 15px;
  margin-top: 30px;
  margin-bottom: 30px;
}



.box h1{
    margin: 0;
    padding: 30px;
    text-align: center;
    font-size: 30px;
}

.box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.box input {
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
}



.box a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    line-height: 20px;
}

.box a:hover {
    color: #eccc68;
}




.regbox .avatar {
    margin: 0;
    padding: 0;
    width: 150px;
    height: 150px;
    top: -19%;
    position: absolute;
    left: calc(50% - 75px);
    border-radius: 50%;
}

.regbox h1 {
    margin-top: 30px;
    padding: 20px 0;
    text-align: center;
    font-size: 30px;
}

.regbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
    
}

.regbox a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    line-height: 20px;
}

.regbox a:hover {
    color: #eccc68;
}
.right{
    padding-left: 70px;
    padding-bottom: 30px;
}
table td{
     padding-bottom: 30px;
}
.line{
    
}
.container2 input{
                background-color: #F1E4DA;
                border-radius: 22px;
                border:#F1E4DA 1px solid;
                font-size: 16px;
                margin-top: 40px;
                width: 240px;
                height: 33px;
                margin-left: 60px;
                margin-bottom: -50px;
                
            }
            .container2{
                background-color:#FFFFFF;
                margin-left: 50px;
                margin-top: -400px;
                border-radius: 22px;
                border:#FFFFFF 1px solid;
                width: 367px;
                height: 430px;
                
                
                
            }
            	.big{
		width: 364px;
		height: 373px;
		background-color:#5D99BD ;
		border-radius: 22px;
		margin-left: 500px;
		margin-top: 100px;
        }
      .big  .topic{
        	padding-left: 70px;
        	padding-top: 1px;

        }

        .t1 td,th{
        	padding-right: 20px;
        	font-size:16px ;
        	text-align: center;
                
        	
        	}

        	.big .t1 {
        		margin-left:auto ;
        		margin-right: auto;
        	}
        	.big .t1 th{
        		padding-bottom:20px ;
        	}

                .big table tr{
                    padding-bottom: -5px;
                }

        
        .big h1{
        	color: #ffffff;
        }
        .right{
            display: block;
        }
        </style>
    </head>
    <body>
       
          <div class="header">
            <img src="logo (1).png" width="200" height="100" alt="logo" id="logo"/>
           
           <a  href="ClientDashboard.jsp"style="padding:15px 38px 15px 38px;">DASHBOARD</a>
           <a  href="UserFlights.jsp" style="padding:15px 35px 15px 35px;">FLIGHTS</a>
           <a  href="chat.jsp" style="padding:15px 52px 15px 52px;">CHAT</a>
           <a  href="UserProfile.jsp" style="padding:15px 40px 15px 40px;">PROFILE</a>
           

        </div>
        <a href="home.html"><img style="float:left; margin-left: 100px; margin-top: 25px;" src="image 16.png" width="44" height="39" alt="image 16"/></a>
         
               
       <div class="container">
           
            <div class="regbox box">
               
                <h1 style="margin-top:0px;">Profile</h1>
                <img src="jh 1.png" alt="men" width="100px" height="100px" style="margin-left:120px; margin-bottom: 20px;  ">
                
                <table >
                    <%
        String user=(String)session.getAttribute("name");
        Statement st;
             String url="jdbc:mysql://localhost:3306/phoenixairlines";
        try {
           
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
        
        String sql="select * from user_details where email='"+user+"'";
        ResultSet rs=st.executeQuery(sql);
        %>
  
                   
                        <tr>
                            <td>Name</td>
                            <td class="right"><%
        while(rs.next()){
            String name=rs.getString("name");
    %><%=name%>           </td>
                        </tr>
                        <tr>
                            <td>User Id</td>
                            <td class="right"><%
        
            int id=rs.getInt("id");
    %><%=id%>                </td>
                        </tr>
                        <tr>
                            <td>NIC</td>
                            <td class="right"><%
        
            String nic=rs.getString("nic");
    %><%=nic%>              </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td class="right"> <%
        
            
    %><%=rs.getString("email")%>                    <%
                            }%></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td class="right"> </br>No. 77, Flower Road,  <br/>                 
                     Col 7 </td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td class="right">0718989666</td>
                        </tr>
                    <%
    }
    catch(Exception ex){
    
        }        
        %>
                </table>       
    
</div>
           <div class="right">
           <div class="big">
	<div class="topic">
		<h1>Flight History<h1>
	</div>

    <table class="t1">  
	<tr><th>Date</th>
		<th>Time</th>
		<th>To</th>
		<th>From</th>
		<th>TID</th>
	</tr>

	<tr><td>8/8/22</td>
		<td>03:44</td>
		<td>NY</td>
		<td>Col</td>
		<td>234</td>
		</tr>
	<tr><td>6/7/22</td>
		<td>05:33</td>
		<td>Col</td>
		<td>NY</td>
		<td>567</td>
		</tr>
	<tr>
		<td>6/3/22</td>
		<td>14:44</td>
		<td>Col</td>
		<td>LA</td>
		<td>678</td>
	    </tr>
	<tr><td>1/3/22</td>
		<td>16:56</td>
		<td>Col</td>
		<td>Doha</td>
		<td>457</td>
		</tr> 
	<tr><td>4/1/22</td>
		<td>07:07</td>
		<td>Doha</td>
		<td>Col</td>
		<td>366</td>
	    </tr>
		
	
</table>

</div>
           <div class="container2">
        <input type="submit" value="Personalize" /><br>
        <input type="submit" value="Help" /><br>
        <input type="submit" value="FAQs" /><br>
        <input type="submit" value="Contact" /><br>
        <input type="submit" value="Report" /><br>
        <input type="submit" value="Log Out" /><br>
        </div>
       </div>
           </div>
          
    </body>
</html>
