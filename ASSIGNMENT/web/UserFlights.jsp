<%-- 
    Document   : UserFlights
    Created on : Oct 7, 2022, 9:45:48 AM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
       <!--css file linking-->

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter">
<style>
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

/*second bar which contains home image, serach bar and calender,filter*/
.secondbar
{
width: 100%;
height: 60px;
}

/*container of three main boxes*/
.container{
  width: 100%;
  height: 450px;
  margin-top: 0;
}

body {
  margin: 0;
                background-image: url("fsb.png");
                background-size: 1580px;
                background-repeat: no-repeat;
  font-family: 'Inter';

}


body {
margin:0;
}


/*logo*/
.logo
{
width: 220px;
height: 100px;
 margin-top:10px;
 margin-bottom:10px;
 margin-left:10px;
 margin-right:12px;
padding-left:60px;
}

/*butons*/
.b1
{
float:right;
margin-top: 35px;
margin-right: 80px;
margin-left:20px;
background-color:#C5DEEC;
border:none;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 600;
width: 135px;
height: 35px;
font-size: 15px;
line-height: 22px;
}

.b2
{
float:right;
margin-top: 35px;
margin-right: 10px;
margin-left:35px;
background-color:#C5DEEC;
border:none;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 600;
width: 135px;
height: 35px;
font-size: 15px;
line-height: 22px;

}

.b3
{
float:right;
margin-top: 35px;
margin-left: 35px;
background-color:#C5DEEC;
border:none;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 600;
width: 135px;
height: 35px;
font-size: 15px;
line-height: 22px;
}

.b4
{
float:right;
margin-top: 35px;
margin-right: 4px;
background-color:#C5DEEC;
border:none;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 600;
width: 135px;
height: 35px;
font-size: 15px;
line-height: 22px;
}

/*home image*/
.home{
float:left;
height: 39.650672912597656px;
width: 44px;
margin-left:65px;
margin-top:5px;
}

.cal{
  float: right;
  margin-right:70px;
  margin-top:0;
  
}

.filter{
  margin-top: 20px;
  margin-left: 86%;
}
/*boxes*/
.block3
{
  width: 400px;
    height: 400px;
    border: none;
    background-color: white;
    float:left;
    border-radius: 20px;
    margin-top:80px;
    
    
}
.block2
{
  width: 300px;
    height: 550px;
    border:none;
    background-color:#5D99BD;
    float: left;
    margin-right: 25px;
    border-radius: 20px;
    color: white;
    text-align: center;
   

}

.block1{
  
    width: 650px;
    height: 550px;
    border: none;
    background-color: white;
    color:#626060;
    float: left;
    margin-right: 25px;
    margin-left:65px;
    border-radius: 20px;

}

/*search bar means text box*/
.searchbar{
  background-color: white;
  border: none;
  outline: none;
  width:120px;
  height: fit-content;
}

/*whole search bar with text box and search icon*/
.sbar{
  width: 250px;
  color:#626060;
  height: 39.650672912597656px;
  background-color: white;
  border-radius: 25px;
  margin-left:120px;
  margin-top:25px;
}

.search{
  margin-left: 20px;
  margin-top:10px;
}


/*table block 1*/
.t1{
  color:#626060;
left: 114px;
top: 250px;
border:1px solid white;
  border-collapse: separate;
  border-spacing: 0 15px;
font-family: 'Inter';
font-style: normal;
font-weight: 500;
font-size: 18px;
line-height: 33px;
/* or 183% */

text-align: center;

}

th,
td {
  width: 150px;
  text-align: center;
  padding-left: 5px;
}

/*recent flights*/
.rf{
  
  text-align: center;
  width: 402px;
  height: 36px;
  left: 114px;
  top: 600px;
  
  font-family: 'Inter';
  font-style: normal;
  font-weight: 700;
  font-size: 25px;
  line-height: 36px;
  margin-left:120px;
  color: #626060;
}

.f{
  
  font-family: 'Inter';
  font-style: normal;
  font-weight: 700;
  font-size: 30px;
  line-height: 36px;
  margin-left: 0px;
  color: white;
}
.bt{
  text-align: center;
width: 172px;
height: 36px;
left: 1104px;
top: 407px;

font-family: 'Inter';
font-style: normal;
font-weight: 700;
font-size: 30px;
line-height: 36px;
margin-left:120px;
color: #626060;

}

.tp{
left: 1104px;
top: 466px;
margin-left:135px;
font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 22px;

color: #626060;
}


.b5
{
margin-left: 80px;
background-color:white;
border:1px solid #626060 ;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 300;
width:250px;
height: 40px;
font-size: 15px;
line-height: 22px;

color: #626060;
}

.b6
{
margin-left: 80px;
margin-top:5px;

color: #626060;
background-color:white;
border:1px solid #626060 ;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 300;
width:250px;
height: 40px;
font-size: 15px;
line-height: 22px;
}

.b7
{
margin-left: 80px;
margin-top:5px;
background-color:white;
border:1px solid #626060 ;
border-radius: 20px;
font-family: 'Inter';
font-style: normal;
font-weight: 300;
width:250px;
height: 40px;
font-size: 15px;

color: #626060;
text-align: center;
line-height: 22px;
}


.text1{
  text-align: center;
  color: #626060;
  font-family: 'Inter';

}
select{
    display: block;
    width: 200px;
    height: 35px;
    background-color: #5D99BD;
    margin-top: 15px;
    color:white;
    font-family: 'inter';
    border: 1px white solid;
    margin-left: 50px;
    padding-left: 20px;
}
.block2 p,input{
    font-size: 12px;
}
 .sbar #bttn{
                color: white;
                background-color: #626060;
                border-radius: 22px;
                width: 80px;
                height: 37px;
                border:1px #626060 solid;
                margin-left: 250px;
                margin-top: -50px;
                padding-top: -50px;
                
            }
           
</style>
</head>
<body>
       <!--to add the increase and decrease button to Passenger type dropdown-->

       <script>
              //initialising a variable name data
         
       var data = 0;
         
         //printing default value of data that is 0 in h2 tag
         document.getElementById("counting").innerText = data;
           
         //creation of increment function
         function increment() {
             data = data + 1;
             document.getElementById("counting").innerText = data;
         }
         //creation of decrement function
         function decrement() {
             data = data - 1;
             document.getElementById("counting").innerText = data;
         }
       </script>

       <!--navigation bar-->
<div class="navbar">

       <!--logo-->
 <div class="header">
            <img src="logo (1).png" width="200" height="100" alt="logo" id="logo"/>
         
           
           <a  href="ClientDashboard.jsp">DASHBOARD</a>
           <a  href="UserFlights.jsp" style="padding:15px 35px 15px 35px;">FLIGHTS</a>
           <a  href="chat.jsp" style="padding:15px 52px 15px 52px;">CHAT</a>
           <a  href="UserProfile.jsp" style="padding:15px 40px 15px 40px;">PROFILE</a>
           

        </div>

<!--second bar which contains home img, search bar and calender and filter-->
<div class="secondbar">

       <!--home image-->
       <a href='home.html'><img class="home" 
       src="homeicon.png"/></a>
       <img class="cal" 
       src="cal.png"/>     

       <!--search bar-->
       <div class="sbar">
            <form action="FlightSearch" method="post">
              <img class="search" src="Search_1.png"/>
             
              <input type="text" name="search" class="searchbar"> Search
              </form>
       </div>
 
<img class="filter" 
       src="filter.png">   
</div>

<!--container of main three boxes-->
<div class="container">

       <!--first box-->
       <div class="block1">
              <h3 class="rf">Recent Flights</h3>
              <table class="t1">
                     <th>
                            <tr>
                               <td>Date</td>    
                            
                                  <td>Flight No</td> 
                            
                                   <td>Time</td>
                            
                                   <td>From</td>
                            
                                 <td>To</td> 
                                 </tr>
                     </th>
                     <tbody>
                        
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
        String time=rs.getString("time");
        
        int id=rs.getInt("flight_id");
        
        %>
         <tr>
                             <td><%=date%></td>
                             <td><%=id%></td>
                             <td><%=time%></td>
                             <td><%=depart%></td>
                             <td><%=arrive%></td>
                         </tr>
                                                                               <%
        
    }}
        catch(Exception ex){
    
        }        
        
        
        %>
                     </tbody>
              </table>

       </div>

       <!--second box-->
       <div class="block2">
 
        
   
              <h3 class="f">Flights</h3>
              
                     <!--first dropdown-->
                     <div class="hh">
                       <select name="from" id="from">
                                   <option value="">From Depature</option>
                                   
                                   <option value="Atlanta">Atlanta, GA</option>
                                   <option value="Amsterdam">Amsterdam, NL</option>
                                   <option value="Abu Dhabi">Abu Dhabi, AEb</option>
                                   <option value="Beijing">Beijing, CN</option>
                                   <option value="v8">Barcelona, ES</option>
                                   <option value="v9">Berlin, DE</option>
                                   <option value="v10">Boston, MA</option>
                                   <option value="v11">Chengdu, CN</option>
                                   <option value="colombo">Colombo, LK</option>
                                   <option value="v13">Charlotte, NC</option>
                                   <option value="v14">Chicago, IL</option>
                                   <option value="v15">Denver, CO</option>
                                   <option value="v16">Doha, QA</option>
                                   <option value="v17">Delhi, IN</option>
                                   <option value="dubai">Dubai, AE</option>
                                   <option value="Edinburgh">Edinburgh, GB</option>
                                   <option value="Frankfurt">Frankfurt, DE</option>
                                   <option value="Guangzhou">Guangzhou, CN</option>
                                   <option value="Hanoi">Hanoi, VN</option>
                                   <option value="v23">Hong Kong, HK</option>
                                   <option value="v24">Istanbul, TR</option>
                                   <option value="v25">Johannesburg, ZA</option>
                                   <option value="v26">Jakarta, ID</option>
                                   <option value="v27">Kuala Lumpur, MY</option>
                                   <option value="v28">Lisbon, PT</option>
                                   <option value="v29">Las Vegas, NV</option>
                                   <option value="v30">Los Angeles, CA</option>
                                   <option value="v31">London, GB</option>
                                   <option value="v32">Mexico City, MX</option>
                                   <option value="v33">Mumbai, IN</option>
                                   <option value="v34">Madrid, ES</option>
                                   <option value="v35">Moscow, RU</option>
                                   <option value="new york">New York, NY</option>
                                   <option value="v37">Nanjing, CN</option>
                                   <option value="v38">Osaka, JP</option>
                                   <option value="v39">Palma, ES</option>
                                   <option value="v40">Philadelphia, PA</option>
                                   <option value="paris">Paris, FR</option>
                                   <option value="v42">Qingdao, CN</option>
                                   <option value="v43">Rio de Janeiro, BR</option>
                                   <option value="v44">Rome, IT</option>
                                   <option value="v45">San Francisco, CA</option>
                                   <option value="v46">Singapore, SGs</option>
                                   <option value="v47">Sao Paulo, BR</option>
                                   <option value="v48">Seoul, KR</option>
                                   <option value="v49">Shanghai, CN</option>
                                   <option value="v50">Toronto, ON</option>
                                   <option value="japan">Tokyo, JP</option>
                                   <option value="v52">Urumqi, CN</option>
                                   <option value="v53">Vienna, AT</option>
                                   <option value="v54">Vancouver, BC</option>
                                   <option value="v55">Wuhan, CN</option>
                                   <option value="v56">Washington, DC</option>
                                   <option value="v57">Xiamen, CN</option>
                                   <option value="v58">Yogyakarta, IDx</option>
                                   <option value="v59">Zurich, CH</option>
                                   <option value="v60">Zhengzhou, CN</option>
                                   </select>
                
              <!--second dropdown-->
                     
                            <select name="to" id="to">
                                   <option value="0">To Dispatcher</option>
                                                         <%
            
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
        String time=rs.getString("time");
        String classs=rs.getString("class");
        
        %>
        <option value="<%=arrive%>"><%=arrive%></option>
                                                           <%
        
    }}
        catch(Exception ex){
    
        }        
        
        
        %>
                                   </select>
                 

                     <!--4th dropdown-->
                                 <select>
                                             <option value="0">Date DD-MM-YYYY</option>
                                                                                                <%
            
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
        String sql="select * from flights ";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
        
        String date=rs.getString("date");       
       
        
        %>
                                             <option value="<%=date%>"><%=date%></option>
                                                                                                        <%
        
    }}
        catch(Exception ex){
    
        }        
        
        
        %>
                             </select>
                            
                    

                     <!--5th dropdown-->
                     <select>
                                             <option value="0">00.00</option>
                                                                                               <%
           
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
        String sql="select * from flights ";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
              
        String time=rs.getString("time");
        
        
        %>
        <option value="<%=time%>"><%=time%></option>
                               <%
        
    }}
        catch(Exception ex){
    
        }        
        
        %>
                             </select>
                     

                     <!--6th dropdown which has increment decrement function-->
                    
                            <select name="ptype" id="ptype">
                                   <option value="0">Passengers type</option>
                                   <option value="v2">Adults(18-64)
                                           <button onclick="increment()">+</button> 
                                                 <h2 id="counting"></h2>
                                           <button onclick="decrement()">-</button> 
                                   </option>
                                   <option value="v3">Students (Over 18)</option>
                                   <option value="v4">Seniors(65+)</option>
                                   <option value="v5">Youths(12-17)</option>
                                   <option value="v6">Children(2-11)</option>
                                   <option value="v7">Toddlers in own seat(Under 2)</option>
                                   <option value="v8">Infants on lap (Under 2)</option>
                            </select>
                    

                     <!--7th dropdown-->
                     
                            <select name="trptype" id="trptype">
                                   <option value="0">Trip Type</option>
                                   <option value="v2">One-way</option>
                                   <option value="v3">Round-trip</option>
                                   <option value="v4">Multi-City</option>
                                   <option value="v5">Trip Builder</option>
                            </select>
                     

                     <!--8th dropdown-->
                     
                            <select name="bgtype" id="bgtype">
                                   <option value="v1">Baggage Type</option>
                                   <option value="v2">Carry-on Bag</option>
                                   <option value="v3">Checked Bag</option>
                                   <option value="v4">Baggage per passenger</option>
                            </select>
                     

                     <!--9th dropdown-->
                     
                            <select name="cls" id="cls">
                                   <option value="v1">Class</option>
                                                                                                                             <%
           
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
        String sql="select * from flights ";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
              
        String classs=rs.getString("class");
        
        
        %>
        <option value="<%=classs%>"><%=classs%></option>
                                   
                          <%
        
    }}
        catch(Exception ex){
    
        }        
        
        %>
                            </select>
                     
                     </div>
              
              <p>View the flight description
<br/>
              <!--radio button-->
              <input type="radio">Confirm Reservation </p>
       </div>

       <!--third box-->
       <div class="block3">
              <h3 class="bt">Buy Tickets</h3>
              <h5 class="tp">Total Price: 22$</h5>

              <!--buttons-->
              <button class="b5" type="button">Add credit or debit card</button><br>
              <button class="b6" type="button">Pay</button><br>
              <button class="b7" type="button">Get Tickets</button>
              <br>
              <br>
              <br>

              <p class="text1">Download reservation receipt<br>Download Tickets</p>

       </div>
</div>

</body>
</html>
