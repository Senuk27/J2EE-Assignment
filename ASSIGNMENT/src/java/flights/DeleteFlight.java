/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package flights;

import java.sql.*;

/**
 *
 * @author HP
 */
public class DeleteFlight {
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
    public String delete(int sid,int fid){
        String msg="Success";
        connectDb();
        try{
            String sql3="select * from user_details where id='"+sid+"'";
        ResultSet rs=st.executeQuery(sql3);
        while(rs.next()){
        String type=rs.getString("user_type");
        if("staff_grade1".equals(type)){
             String sql="select * from flights where flight_id ='"+fid+"' ";
        ResultSet rst=st.executeQuery(sql);
        while(rst.next()){
        String depart=rst.getString("depart");
        String arrive=rst.getString("arrive");
        String date=rst.getString("date");
        int id=rst.getInt("flight_id");
        String time=rst.getString("time");
        String classs=rst.getString("class");
        String service=rst.getString("service");
        
                        String sql1="insert into deleted_flights values('"+id+"','"+sid+"','"+depart+"','"+arrive+"','"+date+"','"+time+"','"+classs+"','"+service+"')";
                        String sql2="DELETE FROM flights WHERE flight_id ='"+fid+"'";
                        st.executeUpdate(sql1);
                        st.executeUpdate(sql2);
        }
        }
        else{
            
            msg="No Access";
        }
        }
        
           }
        catch(Exception e){
            
        } 
        return msg;
    }
}
