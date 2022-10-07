<%-- 
    Document   : insight
    Created on : Oct 7, 2022, 5:06:31 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
<style>
	body{
		font-family:'inter' ;
		color: #626060;
		background-image: url("adminback.png");
                background-size: 1580px;
                background-repeat: no-repeat;
                font-family: 'inter';
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
	.big{
            margin-top: 30px;
		width: 470px;
		height: 738px;
		margin-left: 100px;
		padding-left: 50px;
		background-color: #5D99BD;
		border-radius: 22px;
                color:white;
	}

	#topic1{
		margin-left: 100px;
		
		 padding-top:30px;
	}
	

	.container{
		width: 589px;
		height: 640px;
		margin-left: 170px;
		margin-top: 30px; 
		box-shadow: 1px 5px 10px #D8D8DB;
		background-color: white;
		border-radius: 22px;

	}
	.t1 td{
		padding-right: 30px;
		font-size:14px ;
		font-family:'inter' ;
		margin-left: 200px;

		padding-bottom: 20px;
	}

	.t2 td{
		padding-right: 30px;
		padding-bottom: 20px;
		font-family:'inter' ;
		font-size:14px ;
		margin-left: 200px;
	}

	.box {
         float :right;     
         margin-top: -340px;
         font-size: 10px;
         
         border-radius: 22px;
         background-color:#F0E2D8; 
         background-size: 50px;
         padding-right: 20px;
         padding-left: 20px;
         padding-bottom: 20px;
         padding-top: 20px;
        margin-right: 85px; 



	}
	.t3 td {
		padding-right: 30px;
		font-size:14px ;
		font-family:'inter' ;
		margin-left: 200px;

		padding-bottom: 20px;


	}
	.t4 td{
		padding-right: 30px;
		font-size:14px ;
		font-family:'inter' ;
		margin-left: 200px;

		padding-bottom: 20px;
	}
	.t5 td{
		padding-right: 30px;
		font-size:14px ;
		font-family:'inter' ;
		margin-left: 200px;

		padding-bottom: 20px;

	}
	.d1,.d2,.d3{
		
	}


	
	#see{
		float:right ;
		font-size:13px ;
		font-family:'inter' ;
		padding-right: 35px;
		padding-bottom: 20px;
	   font-weight: normal;


	}
	#see2{
		float:right ;
		font-size:13px ;
		font-family:'inter' ;
		padding-right: 250px;
		padding-bottom: 20px;
	        font-weight: normal;

	         
	}
	.top{
		width: 450px;
		margin-bottom: 100px;
		padding-right: 80px;
		margin-left: 40px;

	}

	.middle{
		width: 450px;
		margin-bottom: 200px;
		padding-right: 80px;
		margin-left: 50px;


	}
	#head{
		padding-bottom: 25px;
	}
	hr{
		border-width: 2;
	}
	h2{
		padding-left: 15px;
	}
	#sa{
		padding-bottom: 25px;
	}
	#see3,#see4,#see5{
		float:right ;
		font-size:13px ;
		font-family:'inter' ;
		padding-right: 80px;
		padding-bottom: 20px;
	        font-weight: normal;

	}
        .line{
            display: flex;
            
        }
</style>



</head>
<body>
    <div class="header">
            <img src="logo (1).png" width="200" height="100" alt="logo" id="logo"/>
           
           <a  href="AdminDashboard.jsp"style="padding:15px 38px 15px 38px;">DASHBOARD</a>
           <a  href="insight.jsp" style="padding:15px 35px 15px 35px;">INSIGHTS</a>
           
          
           

    </div>
        <div class="line">
	<div class="container">
<h2 id=topic1>User Activities</h2>
<hr/>
        <div class="top">
<h4>Updated Reservations<h4> 
	
<table class="t1">
<tr id="head"><td>email</td>
<td>Ticket Number</td>
<td>Date/Time</td> </tr>

<tr><td>kimtaeh@gmail.com</td>
	<td>9876543</td>
	<td>9/11/2022 | 12:00</td>
</tr>

<tr><td>vimakt@gmail.com</td>
	<td>6754893</td>
	<td>9/11/2022 | 10:00</td>
    </tr>

<tr><td>senuhtk@gmail.com</td>
	<td>5784930</td>
	<td>9/11/2022 | 09:50</td>
	</tr>

</table>
<p id="see">see more</p>
</div>

     <div class="middle">
<h4>Number of reserved tickets Today</h4>

<table class="t2">
	<tr><td>Colombo-London</td>
		<td>102</td>
		</tr>

	<tr><td>Colombo-Seoul</td>
		<td>67</td>
		</tr>

	<tr><td>Colombo-Melbourne</td>
		<td>50</td>
		</tr>	
	</table>
	<p id=see2>see more</p>
</div>

<div class="box">
	<h1>Total Income </h1>
	<h2> $78 000 000</h2>
	</div>
</div>

<div class="big">
	<div class="d1">
<h2 id=sa>Staff Activities</h2>
<hr/>
<h4> Deleted Tickets<h4> 
	
<table class="t3">
<tr id="dt"><td>Emp_ID</td>
<td>Ticket Number</td>
<td>Date/Time</td> 
</tr>

<tr><td>445</td>
	<td>9543243</td>
	<td>9/11/2022 | 09:10</td>
</tr>

<tr><td>067</td>
	<td>4443243</td>
	<td>9/11/2022 | 10:11</td>
</tr>

</table>
<p id="see3">see more</p>


</div>

<div class="d2">
	<h4>Deleted Flights</h4>
<table class="t4">
<tr id="df"><td>Emp_ID</td>
<td>Flight number</td>
<td>Date/Time</td> 
</tr>

<tr><td>445</td>
	<td>9543243</td>
	<td>9/11/2022 | 09:10</td>
</tr>

<tr><td>067</td>
	<td>4443243</td>
	<td>9/11/2022 | 10:11</td>
</tr>

</table>
<p id="see4">see more</p>
</div>


<div class="d3">
<h4>Block User Accounts</h4>	
<table class="t5">
<tr id="bua"><td>Emp_ID</td>
<td>User_Email</td> 
</tr>

<tr><td>15523</td>
	<td>kimtaeh@gmail.com</td>
	
</tr>



</table>
<p id="see5">see more</p>
</div>

</div>
        </div>






	


</body>



</html>
