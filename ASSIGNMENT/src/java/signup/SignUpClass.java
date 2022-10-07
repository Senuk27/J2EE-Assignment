/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Signup;

import java.sql.*;

/**
 *
 * @author HP
 */
class SignUpClass {
    Statement st;
    public void connectDb(){
           String url="jdbc:mysql://localhost:3306/phoenixairlines";
        try {
           
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        st=con.createStatement();
    }
    catch(ClassNotFoundException|SQLException ex){
    
        }        
        
    }
    public void addDetails(String type,String email,String password,String name){
           connectDb();
       
       try{
           String sql="insert into user_details values(NULL,'"+type+"','"+email+"','"+password+"','"+name+"','','','',0)";
           st.executeUpdate(sql);
       }
       catch(SQLException ex){
          // Logger.getLogger(Books.class.getName()).log(Level.SEVERE,null,ex);
       }
    }
}
