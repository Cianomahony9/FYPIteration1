/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.dbCreateFamCon;
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
 * 
 *  
 */

public class createFamily1 extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = response.getWriter()) {
         // Begin Modify code
            
           // code acquired and modified from Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
            
            
            // take variable from  family jsp and create table name 
            String familyname1 =request.getParameter("familyname1");
            
            // database connection method 
            
            dbCreateFamCon db = new dbCreateFamCon();
            Connection concreatefam =db.getCreateFamCon();
            
            
            
            // sql statement to create table with name inputted
            
            Statement stmt = concreatefam.createStatement();
            
             //create statement to create family profile table and varialbe above (familyname1) gathered inserted to get table name , columns added to table on create 
            
            stmt.executeUpdate("CREATE TABLE " + familyname1 + "(user_id int NOT NULL AUTO_INCREMENT, name varchar(35),familyname varchar(35), gender varchar(6), height varchar(8), weight varchar(5), insideleg varchar(4), armlength varchar(4),telephone int(10), PRIMARY KEY(user_id));");
            
     
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            
           out.println("<script type=\"text/javascript\">");
            out.println("alert('Family Profile Created for "+familyname1+"');");
            out.println("</script>");
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp open custprofile.jsp
              
            RequestDispatcher rd =request.getRequestDispatcher("Family.jsp");
            rd.include(request, response);
        
        } catch (SQLException ex) {
            Logger.getLogger(createFamily1.class.getName()).log(Level.SEVERE, null, ex);
        }
        //end of modify 
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
