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
 * @author Cian
 * 
 *  Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
 */

public class createFamily1 extends HttpServlet {

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
            
           // code acquired and modified from Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
            
            // Begin Modify code
            // take variable from  family jsp and create table name 
            String familyname1 =request.getParameter("familyname1");
            
            // database connection method 
            
            dbCreateFamCon db = new dbCreateFamCon();
            Connection concreatefam =db.getCreateFamCon();
            
            
            
            // sql statement to create table with name inputted
            
            Statement stmt = concreatefam.createStatement();
            
             //create statement swtiched and varialbe gathered inserted to get table name 
            
            stmt.executeUpdate("CREATE TABLE " + familyname1 + "(user_id int NOT NULL AUTO_INCREMENT, name varchar(35),familyname varchar(35), gender varchar(6), height varchar(8), weight varchar(5), insideleg varchar(4), armlength varchar(4), PRIMARY KEY(user_id));");
            //End
      //   out.println("<h1>Family Created For "+familyname1+"</h1>");
        // out.print("<a href=\"/FYPCian/InsertFamily.jsp\">Insert Profile To Family</a>");
            
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
