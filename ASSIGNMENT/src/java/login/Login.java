/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        PrintWriter out=response.getWriter();

             try{
        String url="jdbc:mysql://localhost:3306/phoenixairlines";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection(url,"root","");
        Statement st=con.createStatement();
        String sql="select * from user_details where email='"+email+"'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next()){
        String pw=rs.getString("password");
        String type=rs.getString("user_type");
        int id=Integer.parseInt(rs.getString("id"));
        int approve=Integer.parseInt(rs.getString("approval"));
        if(password == null ? pw == null : password.equals(pw)){
            if("staff".equals(type)||"staff_grade2".equals(type)){
                if(approve==1){
        response.sendRedirect("StaffDashboard.jsp");}
                else{
                    response.sendRedirect("NotApprovedAccount.jsp");
                      
                }
        }
            else if("client".equals(type)){
                HttpSession session=request.getSession();
        session.setAttribute("id", id);
        
                response.sendRedirect("ClientDashboard.jsp");
            }
            else{
                HttpSession session=request.getSession();
        session.setAttribute("id", id);
                response.sendRedirect("AdminDashboard.jsp");
            }
        }
        else{
            HttpSession session=request.getSession();
        session.setAttribute("id", email);
            response.sendRedirect("login.html");
        }
        }
             }
             catch(Exception e){
                 
             }
        
        /*
        PrintWriter out=response.getWriter();
        out.println(email);
        out.println(password);
        HttpSession session=request.getSession();
        session.setAttribute("name", email);
        response.sendRedirect("StaffDashboard.jsp");*/
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
