<%-- 
    Document   : StaffProfile
    Created on : Oct 7, 2022, 6:22:30 PM
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
                body{
                margin: 0;
                background-image: url("fsb.png");
                background-size: 1580px;
                background-repeat: no-repeat;
                font-family: inter;
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
           .right{
    padding-left: 70px;
    padding-bottom: 30px;
}
table td{
     padding-bottom: 30px;
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
  margin-top: 60px;
  margin-bottom: 30px;
  margin-left: 0px;
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
                margin-left: 30px;
                margin-top: 150px;
                border-radius: 22px;
                border:#FFFFFF 1px solid;
                width: 367px;
                height: 430px;
                
                
                
            }
            .line{
                display: flex;
            }
	.mid{
		width: 475px;
		height: 590px;
		background-color:#5D99BD;
		border-radius: 22px;
		margin-left: 30px;
                margin-top: 50px;
	}
	#mt{
		margin-left: 50px;
		padding-top: 50px;
		font-size:24px ;
	}
	h4{
		font-weight: normal;
		font-size:16px ;
		margin-left: 50px;
		padding-bottom: 90px;
		margin-top: -10px;
       }
    .b1{
    	width: 400px;
		height: 52.13px;
		background-color:#FFFFFF;
		border-radius: 33px;
		margin-left: 35px;
		margin-top:-70px ;

    }   
	.b2{
		width: 400px;
		height: 52.13px;
		background-color:#FFFFFF;
		border-radius: 33px;
		margin-left: 35px;
		margin-top: 20px;
        }
    #uf,#date{
    	margin-left: 50px;
        margin-top: -70px;
    }
    .b3{
    	width: 367px;
		height: 140px;
		background-color:#FFFFFF;
		border-radius: 33px;
		margin-left: 35px;
		margin-top: 20px;

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
                            <td>Staff ID</td>
                            <td class="right"><%
        
            int id=rs.getInt("id");
    %><%=id%>                </td>
                        </tr>
                        <tr>
                            <td>nic</td>
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
                <div class= "mid">
	<h2 id="mt">Deleted Flights</h2>
	<br>
	<h4>September 9, 2022</h4>
	
	<div class="b1">
		
	</div>

	<div class="b2">
		
	</div>

	
		<br><br>
		<a id="uf" >Updated Flights</a>
		<br><br>
		<a id="date">September 9, 2022</a>
		<div class="b3">

		

	</div>

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
           
</div>
    </body>
</html>
