/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package flights;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

/**
 *
 * @author HP
 */
public class Flights {
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
  public void addFlight(String depart,String arrive,String date,String time,String classs,String service){
      connectDb();
       try{
           String sql="insert into flights values(NULL,'"+depart+"','"+arrive+"','"+date+"','"+time+"','"+classs+"','"+service+"')";
           st.executeUpdate(sql);
       }
       catch(SQLException ex){
          // Logger.getLogger(Books.class.getName()).log(Level.SEVERE,null,ex);
       }
  }
    
}
