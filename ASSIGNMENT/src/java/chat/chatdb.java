/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chat;

import java.sql.*;
import java.util.Vector;

/**
 *
 * @author HP
 */
public class chatdb {
    Statement st;
   public void connectDb(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","");
            st=con.createStatement();
        }
        catch(Exception e){
            
        }
    }
    public void addMsg(String user,String text){
        
        try{
            connectDb();
            String sql="insert into chat values('"+user+"','"+text+"')";
            st.executeUpdate(sql);
        }
        catch(Exception r){
            System.out.println(r.getMessage());
        }
    }
    Vector fetchUser(String user){
      Vector b=new Vector();
        try{
            String sql="select text from chat where user=='"+user+"'";
        }
        catch(Exception e){
            
        }
        return b;
    }
}
