<%-- 
    Document   : ManageStaff
    Created on : Oct 6, 2022, 8:23:19 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <html>
        <head>
            <style>
                 body{
                margin: 0;
                background-image: url("manage.png");
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
        .top{
        
margin-left: 30px;
width: 436px;
height: 525px;
background: #FFFFFF;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 22px;


        }
.top h2{
    width: 294.33px;
font-family: 'Inter';
font-style: normal;
font-weight: 700;
font-size: 22px;
text-align: center;
color: #626060;
padding-top: 20px;
        }
        .top h3{

width: 294.33px;

font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;
color: #626060;


        }
       .top table{
           

margin-top: -30px;
margin-left:90px;
font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 14px;
color: #626060;


        }
       .top p{
            


width: 42.42px;


font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 8px;
color: #545050;


        }
       
.unblock{    
    margin-left: 30px;
    
    width: 70px;
    height: 18px;
    display: block;
    text-align: center;
    padding: 1px;
    
background-color: #C5DEEC;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 22px;
font-family: 'Inter';
font-style: normal;
font-weight: 700;
font-size: 8px;

text-transform: uppercase;

color: #626060;


}
.line{
    display: flex;
    margin-top: 30px;
}
.bottom table{
margin-left: 50px;
}
.bottom table td{
    padding-right: 50px;
}
 .bottom{

width: 371px;
height: 525px;
margin-left: 30px;

background: #5D99BD;
box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25), 0px 4px 4px rgba(0, 0, 0, 0.25);
border-radius: 22px;

color:#FFFFFF

 }
 .bottom h2{

font-family: 'Inter';
font-style: normal;
font-weight: 700;
font-size: 22px;

text-align: center;

color: #FFFFFF;


 }


.bottom td{


font-family: 'Inter';
font-style: normal;
font-weight: 600;
font-size: 16px;

padding: 3px;


color: #FFFFFF;
}

.size{
    
font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 16px;
line-height: 19px;

color: #FFFFFF;


}
.hi{
    padding: 3px;
}

 </style>
        </head>
        <body>
              <div class="header">
            <img src="logo (1).png" width="200" height="100" alt="logo" id="logo"/>
           
           <a  href="StaffDashboard.jsp"style="padding:15px 38px 15px 38px;">DASHBOARD</a>
           <a  href="StaffFlights.jsp" style="padding:15px 35px 15px 35px;">FLIGHTS</a>
           <a  href="chat.jsp" style="padding:15px 52px 15px 52px;">CHAT</a>
           <a  href="profile.jsp" style="padding:15px 40px 15px 40px;">PROFILE</a>
           

        </div>
        <a href="home.html"><img style="float:left; margin-left: 100px; margin-top: 25px;" src="image 16.png" width="44" height="39" alt="image 16"/></a>

            <div class="line">
                <div class="all" style="

            width: 436px;
            height: 525px;
            
            background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 22px;
            ">
                <h1 style="
    
                width: 241px;
                height: 37px;
               
                
                font-family: 'Inter';
                font-style: normal;
                font-weight: 700;
                font-size: 22px;
              
                
                color: #545050;
                
                ">Search User Accounts</h1>
                <form style="
               
    width: 69px;
    height: 90px;
    
    
    font-family: 'Inter';
    font-style: normal;
    font-weight: 500;
    font-size: 14px;
    line-height: 18px;
    
    
    color: #626060;">
    
    
    
                    <lable for="Uname">User Name</lable>
                    <input style=" 
                        box-sizing: border-box;
                       
                        width: 142px;
                        height: 24px;
                       
                        
                        border: 1px solid #626060;
                        border-radius: 22px;
                         " type="text" id="Uname" name="User Name">
                    <br>
                    <p>or</p>
                    <br>
                    <lable for="User ID">User Id</lable>
                    <input style="       
                        box-sizing: border-box;
                        
                        
                        width: 142px;
                        height: 24px;
               
                        border: 1px solid #626060;
                        border-radius: 22px;
                         " type="text" id="UID" name="User ID">
                  
                    <input type="button" value="CANCEL" style="
        
                    width: 55px;
                    height: 20px;
             
                    background: #F1E4DA;
                    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                    border-radius: 14px; 
                    border-color: #F1E4DA;

                    font-family: 'Inter';
                    font-style: normal;
                    font-weight: 700;
                    font-size: 7px;
                    line-height: 8px;
                    text-transform: uppercase;
                    
                    color: #626060;
                    
                    ">
                    <input type="button" value="ENTER" style="/* Rectangle 66 */
    
                    width: 55px;
                    height: 20px;
                   
                    background: #F1E4DA;
                    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                    border-radius: 14px;
                    border-color: #F1E4DA;
    
                     
                    font-family: 'Inter';
                    font-style: normal;
                    font-weight: 700;
                    font-size: 7px;
                    line-height: 8px;
                    text-transform: uppercase;
                    
                    color: #626060;
                    ">
                    
                    
    
                </form>
                <div class="long" style="
    
             
                width: 365px;
                height: 218px;
                
                border-radius: 6px;
                
                font-family: 'Inter';
                font-style: normal;
                font-weight: 700;
                font-size: 16px;
              
                text-align: center;
                
                color: #626060;
                ">
               
    <p style="text-align: left; font-size: 22px">Recents</p>
    
    <table>
        <tr style="font-size: 18px;">
            <td>UID</td>
            <td>Name</td>
        </tr>
        
        <tr style=" font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        line-height: 18px;
        ">
            <td>234G</td>
            <td style="padding: 5px;" >Hezel Fernando</td>
        </tr>
        <tr style=" font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        line-height: 18px;">
            <td>235G</td>
            <td style="padding: 5px;"  >Dasuni Megna</td>
        </tr>
        <tr style=" font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        line-height: 18px;">
            <td>356G</td>
            <td style="padding: 5px;">Emma Heesters</td>
        </tr>
        <tr style=" font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        line-height: 18px;" >
            <td>456Y</td>
            <td style="padding: 5px;" >Selena Gomez</td>
        </tr>
        <tr style=" font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        line-height: 18px;">
            <td>875N</td>
            <td style="padding: 5px;">Kolin Mazoor</td>
        </tr>
        <tr style=" font-family: 'Inter';
        font-style: normal;
        font-weight: 500;
        font-size: 15px;
        line-height: 18px;">
            <td>875K</td>
            <td style="padding: 5px;" >Dilshan Maduvantha</td>
        </tr>
      
    </table>
                </div></div>
      
        <div class="bottom">
            
<h2>Recently Updated <br>Accounts</h2>
<table>
    <tr>
      
        <div class="hi">
    <td>UID</td>
    <td>Name</td>
    </div>
    </tr>
    
    <tr>
    <td>Today</td>
    </tr>
   
    
    <tr>
        <td>234G</td>
        <td class="size">Hezel Fernando</td>
    </tr>
    <tr>
        <td>235G</td>
        <td class="size">Dasuni Megna</td>
    </tr>
    <tr>
        <td>356G</td>
        <td>Emma Heesters</td>
    </tr>
    <tr>
        <td>456Y</td>
        <td>Selena Gomaz</td>
    </tr>
    <tr>
        <td>875N</td>
        <td>Kolin Mazoor</td>
    </tr>
    <tr>
        <td>875K</td>
        <td>Dilshan Maduka</td>
    </tr>
    <tr>
        <td>Yesterday</td>
    </tr>
    <tr>
        <td>356U</td>
        <td>Nishul Fernando</td>
    </tr>
    <tr>
        <td>363K</td>
        <td>Dasuni achala</td>
        
    </tr>
    <tr>
    <td>754D</td>
    <td>Kuluni Heesters</td>
    </tr>
    <tr>
        <td>764L</td>
        <td>Gwen Nirasha</td>
    </tr>
    <tr>
        <td>757J</td>
        <td>Mac Fertil</td>
    </tr>
    
</table>

        </div>
                      <div class="top">
            <h2>Blocked Accounts</h2>
            <table>
                <tr>
                    <h3><td>UID</td>
                    <td>Name</td></h3>
                    <th> </th>
                    
                    </tr>
                <tr>
                    <p><td>Today</td></p>
                </tr>
                <br>
                <tr>
                    <td>254G</td>
                    <td class="name">Megna Silviya</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>255G</td>
                    <td class="name" >Sachini Udara</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>356G</td>
                    <td class="name">Kusum Perera</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>446Y</td>
                    <td class="name">Nirosh Malaka</td>
                    <td><a class="unblock" href="UBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>855N</td>
                    <td class="name">Aparna Jaya</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>875K</td>
                    <td class="name">Sarini Shalya</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                
                <tr>
                   <p><td>Yesterday</p></h4>
                </tr>
                <br>
                <tr>
                    <td>556U</td>
                    <td class="name">Kavya Thisara</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>563K</td>
                    <td class="name">Chores Sted</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>854D</td>
                    <td class="name">Pathum Pavan</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>754L</td>
                    <td class="name">Motio Raize</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>
                <tr>
                    <td>787J</td>
                    <td class="name" >Polando Mark</td>
                    <td><a class="unblock" href="UNBLOCK.jsp">UNBLOCK</a></td>
                </tr>

            </table>
        </div>
                
    </div>
        </body>
    </html>
    
