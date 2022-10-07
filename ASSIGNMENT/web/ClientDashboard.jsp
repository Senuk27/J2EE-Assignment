<%-- 
    Document   : ClientDashboard
    Created on : Oct 5, 2022, 2:06:50 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@600&display=swap" rel="stylesheet">
    <style>
            body{
                margin: 0;
                background-image: url("staffdash.png");
                background-size: 1580px;
                background-repeat: no-repeat;
                font-family: 'inter';
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
             .line{
                justify-content: center;
                display: flex;
                margin-top: 50px;
                margin-bottom: 50px;
            }
            #search{
                height: 35px;
                width: 250px;
                background-color: white;
                border: 1px white solid;
                border-radius: 24px;
                background-image: url("search.png");
                background-repeat: no-repeat;
                background-size: 20px;
                background-position: 10% 50%;
                font-family: 'inter';
                color: #626060;
                text-align: right;
                padding-right:30px; 
                
            }
            #tid{
                width: 220px;
                height: 37px;
                border: 1px #626060 solid;
                border-radius: 22px;
                margin-left: 20px;
                margin-right: 10px;
            }
            .ticket{
                font-family: 'inter';
                color: #626060;
                background-color: white;
                width: 420px;
                padding: 30px;
                height: 90px;
                border-radius: 22px;
                margin-top: 25px;
                
                
            }
            .ticket h2{
                margin-top: -10px;
                font-size: 20px;
            }
            .middle{
                margin-left: 30px;
                margin-top: 30px;
            }
            #bttn{
                color: white;
                background-color: #626060;
                border-radius: 22px;
                width: 80px;
                height: 37px;
                border:1px #626060 solid;
            }
            .flightline{
                border: 1px solid;
                border-radius: 9px;
                padding: 10px;
                display: flex;
                padding-left: 20px;
                font-size: 9px;
                
                
            }
            .flightline h1{
                font-size: 16px;
            }
            .flightline span{
                font-size: 6px;
                display: inline-block;
                height: 0;
            }
             .flightline img{
                margin-top: 25px;
                margin-left: 20px;
                margin-right: 20px;
                
            }
              .ticket2{
                background-color: #5D99BD;
                padding: 20px;
                width: 70px;
                border-radius: 9px;
                text-align: center;
                color:white;
                margin-left: 50px;
            }
            .ticket2 a{
                text-decoration: none;
                color: white;
            }
            .clright h2{
                background-color: #626060;
                color:white;
                border: 1px #626060 solid;
                border-radius: 42px;
                font-size: 19px;
                padding: 10px 30px 10px 30px;
                font-weight: normal;
                width:230px;
                text-align: center;
                margin-left: 27px;
            }
            .clright{
                margin-left: 30px;
                margin-top: 15px;
            }
            #sub{
                background: linear-gradient(to bottom, #e1f4ff 0%, #ffffff 100%);
                width: 350px;
                height: 80px;
                text-align: center;
                color: #626060;
                border-radius: 22px;
                padding-top: 25px;
                margin-top: 20px;
            }
            .pop{
                width: 370px;
                height: 95px;
                background-image: url("Rectangle 232.png");
                background-repeat: no-repeat;
                background-size: 147px;
                background-color: white;
                border-radius: 22px;
                color: #626060;
                
            }
            .pop h3{
                margin-left: 200px;
                font-size: 18px;
                padding-top: 20px;
            }
            .pop p{
                margin-left: 200px;
                font-size: 10px;
                margin-top: -10px;
            }
            #pop2{
                background-image: url("Rectangle 233.png");
                background-repeat: no-repeat;
                background-size: 147px;
            }
            #pop3{
                background-image: url("Rectangle 234.png");
                background-repeat: no-repeat;
                background-size: 147px;
            }
            #pop4{
                 background-image: url("Rectangle 235.png");
                background-repeat: no-repeat;
                background-size: 147px;
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

         <div class="line">
            <div class="dash">
                <h1>Dashboard</h1>
                
                <img src="clientpro.png" width="90" height="90" alt="Ellipse 16"/>
                            
                <p id='first'><a href="chat.jsp">Chat</a></p>              
                <p><a href="UserProfile.jsp">Profile</a></p>
                <p><a href="UserFlights.jsp">Flights</a></p>
                <p><a href="settings.jsp">Settings</a></p>
                <p><a href="faq.html">FAQs</a></p>
            </div>
             <div class='middle'>
                 <div class='find'>
                     <form action='FlightSearch' method='post'>
                     <input id='search' type="text" name='search' placeholder="Search">
                     <input type="submit" value="Search" id='bttn' />
                                          </form>
                 </div>
                 <div class='ticket'>
                     <h2>Ticket Information</h2>
                     Ticket ID <input id='tid' type="text" name='tid'> <input id='bttn' type="submit" value="Search" />
                 </div>
                 <div class='ticket'>
                     <h2>Chat</h2>
                     <img src="iconchat.png" width="70" height="39" alt="iconchat" style="margin-top:5px; float: left;"/>
                     <input id='tid' type="text" name='tid'> <input id='bttn' type="submit" value="Enter" />
                 </div>
                  <div class='ticket'>
                      <h2 style="margin-bottom:5px;">Flight Details</h2>
                    <div class='flightline'>
                    <h3>Colombo
                        </br><span>02.00 IST</br>Departs</span></h3>
                    <img src="Arrow 5.png" width="73" height="10" alt="Arrow 5"/>
                    <h3>Chennai
                        </br><span>04.00 IST</br>Arrives</span></h3>
                    <div class="ticket2">
                        5 tickets</br><a href=''> Flight Details</a>
                    </div>
                </div>
                 </div>
             </div>
             
             <div class="clright">
                 <h2>Popular departures</h2>
                 <p id="sub">Find flight tickets from airports</br> most frequently chosen by</br> other travelers</p>
                 <div class='pop'>
                     <h3>Katunayake</h3>
                     <p > Bandaranaike Int Airport</br>Western - Gampaha - SL</p>
                 </div>
                 <div class='pop' id="pop2">
                     <h3>Chennai</h3>
                     <p > Bandaranaike Int Airport</br>Western - Gampaha - SL</p>
                 </div>
                 <div class='pop' id="pop3">
                     <h3>Melbourne</h3>
                     <p > Bandaranaike Int Airport</br>Western - Gampaha - SL</p>
                 </div>
                 <div class='pop' id="pop4">
                     <h3>Rathmalana</h3>
                     <p > Bandaranaike Int Airport</br>Western - Gampaha - SL</p>
                 </div>
             </div>
             </div>
    </body>
</html>
