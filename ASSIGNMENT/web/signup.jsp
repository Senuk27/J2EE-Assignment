<%-- 
    Document   : signup
    Created on : Oct 5, 2022, 7:26:10 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@600&display=swap" rel="stylesheet">
        <style>
            body{
                background-image: url("bp.png");
                background-repeat: no-repeat;
                background-size: 1580px;
                font-family: 'inter';
                
                
                
            }
            .container{
                margin-top:200px;
                margin-left: 150px;
            }
            table td{
                height: 40px;
                width: 250px;
                padding-top: 20px;
                 font-size: 16px;
            }
            table td input{
                height: 40px;
                width:260px;
                border-radius: 15px;
                background-color: #F0E2D8;
                border: 1px #F0E2D8 solid;
                font-family: 'inter';
               
            }
           
            .container h1{
                margin-top: -50px;
                font-size: 30px;
            }
            select{
                width: 260px;
                height: 40px;
                border-radius: 15px;
                border: 1px #F0E2D8 solid;
            }
            .radio{
                width: 20px;
                margin-left: 20px;
                height: 20px;
            }
            .grade{
                margin-top: -50px;
                text-align: center;
                margin-bottom: 20px;
            }
            .icon{
                width: 70px;
            }
            #bttn{
                width: 200px;
                height: 36px;
                background-color: #F0E2D8;
                border-radius: 15px;
                border: 1px #F0E2D8 solid;
                margin-top: 30px;
                margin-left: 15%;
                font-family:'inter' ; 
            }
            #bttn:hover{
                background-color: #A99D94;
            }
            select{
                background-color: #F0E2D8;
                padding-left: 30px;
                font-family: 'inter';
            }
        </style>
    </head>
    <body>
         <%String type="staff";%>
        <div class="container">
            <h1>Sign Up</h1>
            <form action="Signup" method="post">
        <table >
           
                <tr>
                    <td class='icon'><img src="Group.png" width="40" height="30" alt="group-photo"/></td>
                    <td>Select user type
                    </td>
                    <td><select name="type">
                            <option value="client">Client</option>
                            <option value="staff_grade1">Staff: Grade 1</option>
                            <option value="staff_grade2">Staff: Grade 2</option>
                            <option value="admin">Admin</option>
                        </select></td>
                </tr>
             
       
               
             
                <tr>
                    <td class='icon'> <img src="email-photo.png" width="32" height="32" alt="email-photo"/>
                    </td>
                    <td>Email address </td>
                    <td> <input type="email" name="email" /></td>
                </tr>
                <tr>
                    <td class='icon'> <img src="Vector (1).png" width="35" height="26" alt="email-photo"/>
                    </td>
                    <td>User Name</td>
                    <td> <input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td class='icon'><img src="password photo.png" width="32" height="32" alt="password photo"/>
                    </td>
                    <td>Password</td>
                    <td><input type="password" name="password" /> </td>
                </tr>
                <tr>
                    <td class='icon'><img src="confirm-password.png" width="32" height="32" alt="confirm-password"/>
                    </td>
                    <td>Confirm Password</td>
                    <td><input type="password" name="confirm_password"  /> </td>
                </tr>
                 </table>
                <input type="submit" value="Create Account" id='bttn' />
                </form>
        </div>
       

    </body>
</html>
