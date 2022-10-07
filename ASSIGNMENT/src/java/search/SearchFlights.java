/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Search;


import java.sql.*;
import java.util.Vector;

/**
 *
 * @author HP
 */
class SearchFlights {
Statement st;
   Vector searchItem(String keyword) {
        Vector v=new Vector();
        try{
        String url="jdbc:mysql://localhost:3306/phoenixairlines";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,"root","");
        st=(Statement) con.createStatement();
        String sql="select * from flights where arrive like '%' '"+keyword+"' '%'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
            v.add(rs.getString("date"));
            v.add(rs.getString("flight_id"));
            v.add(rs.getString("time"));
           v.add(rs.getString("depart"));
           v.add(rs.getString("arrive"));
           v.add(rs.getString("class"));
           v.add(rs.getString("service"));
        }
        
        }
        catch(Exception e){
            
        }
        return v;
    }
    
}
