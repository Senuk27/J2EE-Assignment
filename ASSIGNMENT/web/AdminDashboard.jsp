<%-- 
    Document   : AdminDashboard
    Created on : Oct 5, 2022, 5:46:19 PM
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
                height: 450px;
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
                        .page{
                             background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 22px;
             width: 590px;
            height: 600px;
            margin-left: 50px;
                        }
                         .line{
                justify-content: center;
                display: flex;
                margin-top: 50px;
                margin-bottom: 50px;
            }
                   .page h2{/* Today Update About Flight Reservation */
            padding-top: 30px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 25px;
            line-height: 40px;
            /* or 160% */
            text-align: center;

            color: #626060;

                        }
                   .page p{
                            /* No of flights to be departured : 10 Full Reserved : 6 Available to be Reserved : 4 */
           margin-top: -30px;
            width: 370px;
            height: 200px;
            margin-left: 70px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 22px;
            line-height: 58px;
            text-align: left;
            color: #626060;

                        }
                      .page  table{
           
            width: 187px;
            height: 215px;
            margin-left: 320px;
            margin-top: -30px;

            }
            #update{
               margin-left: 70px;
                        width: 79.16px; 
                        height: 29px; 
                       float: left;
                        font-family: 'Inter'; 
                        font-style: normal; font-weight: 400;
                        font-size: 14px; 
                        line-height: 17px; 
                        text-align: center; 
                        color: #626060; 
                        background-color: #c5deec;
                        border: 1px #c5deec solid;
                        border-radius: 22px;
                        margin-top: -20px;
            }
            .bot{
                     
                        width: 179.16px;
                        height: 35.25px;
                        border: 1px #DEDEDE solid;
                        font-family: 'Inter';
                        font-style: normal;
                        font-weight: 400;
                        font-size: 15px;
                        text-align: center;
                        background-color: #DEDEDE;
                        color: #626060;
                        border-radius: 22px;
                        
            }
            
                         .monitor{
                background-color: white;
                width: 284px;
                  color: #626060;
                font-family: 'inter';
                height: 336px;
                border-radius: 22px;
                padding-left: 25px;
                margin-top: -20px;
            }
            .monitor h2{
                font-size: 20px;
                padding-top: 20px;
               
                margin-left: 30px;
                
            }
            .monitor a{
                display: block;
                width: 240px;
                height: 30px;
                text-decoration: none;
                color: #626060;
                font-family: 'inter';
                font-size: 16px;
                padding: 10px 10px 1px 10px;
                border-radius: 22px;
                margin-top: 20px;
                text-align: center;
            }
            .activities{
                width: 309px;
                height: 300px;
                background-color: white;
                border-radius: 22px;
            }
            .activities h2{
                    font-size: 20px;
                padding-top: 20px;
             color: #626060;
                font-family: 'inter';
                margin-left: 30px;
                
            }
            hr{
                width: 100%;
            }
            .acc{
                background-color: #5D99BD;
                color: white;
                padding: 15px;
                text-align: center;
                margin-top: 20px;
                
            }
            .Admin_right{
                margin-left: 50px;
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
              <div class="dash">
                <h1>Dashboard</h1>
                
                <img src="admin.png" width="90" height="90" alt="Ellipse 16"/>
                            
                <p id='first'><a href="insight.jsp">Insights</a></p>              
                <p><a href="setting.jsp">Settings</a></p>
                <p><a href="faq.jsp">FAQs</a></p>
            </div>
            <div>
                
            </div>
            <div class="page">

                <h2>Today Update About Flight <br> Reservation<h2>
                

                <p>No of flights to be departured: 10<br>
                    Full Reserved: 6<br>
                    Available to be Reserved: 4<br>
                </p>
                <input type="submit" value="Update" id="update" >
                <table>
                    <tr>
                    <td><input type="button" value="Personalize" class="bot"></td>
                    </tr>
                    <tr>
                    <td><input type="button" value="Advanced Setting" class="bot" ></td>
                    </tr>
                    <tr>
                    <td><input type="button" value="Troubleshooting" class="bot"></td>
                    </tr>
                    <tr>
                    <td><input type="button" value="Log Out" class="bot"></td>
                    </tr>
                </table>
            </div>
            <div class="Admin_right">
              <div class="monitor">
                      <h2>Monitor</h2>
                      <hr/>
                      <a style="background-color:#DEDEDE; margin-top: 50px; " href="DeletedFlighs.jsp">Deleted Flights</a>
                      <a href="UserFlighs.jsp" style="background-color: #C5DEEC;">Recently Added Flights</a>
                      <a href="deletedflighs.jsp" style="background-color: #F1E4DA">Handled User Accounts</a>         
              </div>
                <div class="activities">
                    <h2>Activities</h2>
                    <hr/>
                    <div class="acc"> <p>Approved Accounts : 45</p><p>Pending Accounts : 05</p></div>
                </div>
              </div>
           
        </body>
  
</html>
