/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbConUpdateProfile;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Cian O'Mahony 117436194
 */
public class updateprofile extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            //begin Modify
            // pulling variables from viewcustaccount.jsp
           String custfname = request.getParameter("custfname");
           
           String custlname = request.getParameter("custlname");
         
           String custemail = request.getParameter("email");
           
           String custaddress = request.getParameter("address");
           
            String custeircode = request.getParameter("eircode");
            
            String custcounty = request.getParameter("county");
            
            int custtelephone = Integer.parseInt(request.getParameter("custtelephone"));   // https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
            
            // connection to database
             DbConUpdateProfile db = new DbConUpdateProfile();
            Connection conupdateprofile = db.getConUpdateProfile();
           
            // code for sql statement to update acquired and modified from https://stackoverflow.com/questions/46441696/how-to-update-mysql-database-value-from-java-netbeans and https://www.youtube.com/watch?v=akW6bzoRcZo
          Statement stmt = conupdateprofile.createStatement();
           stmt.executeUpdate("UPDATE profile SET email = '"+custemail+"' , address = '"+custaddress+"' , eircode = '"+custeircode+"' , county = '"+custcounty+"'  " + "WHERE telephone = '"+custtelephone+"' AND fname = '"+custfname+"' AND lname = '"+custlname+"'  ");
            
            // output message stating profile has been updated 
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            // display message when successfuly inserted data to db
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Profile for "+custfname+" "+custlname+" Updated');");
            out.println("</script>");
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            
            RequestDispatcher rd =request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
           
           
        } catch (SQLException ex) {
            Logger.getLogger(updateprofile.class.getName()).log(Level.SEVERE, null, ex);
            //end Modify
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
        processRequest(request, response);
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
