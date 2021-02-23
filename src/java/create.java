/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbCon;
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
* Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
*/
public class create extends HttpServlet {
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
            
            // Begin Modify code
            // take data from custProfile jsp page 
           
            String fname = request.getParameter("fname");
            
            String lname = request.getParameter("lname");
            
            int telephone = Integer.parseInt(request.getParameter("telephone"));  //code acqired and modified from stack overflow  https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
            
            String address = request.getParameter("address");
            
            String eircode = request.getParameter("eircode");
            
            String email = request.getParameter("email");
            
            String county = request.getParameter("county");
            
            String password = request.getParameter("password");
            
            //database connection method
            
            DbCon db = new DbCon();
            Connection con = db.getCon();
            
            
            
            
            
            
            // sql statement to insert data above
             Statement stmt = con.createStatement();
            stmt.executeUpdate("INSERT INTO profile (fname,lname,telephone,address,eircode,email,county,password) values('"+fname+"','"+lname+"','"+telephone+"','"+address+"','"+eircode+"','"+email+"','"+county+"','"+password+"')");
          // out.println("<h1>Profile Created for "+fname+"</h1>");
            //out.print("<a href=\"/FYPCian/index.html\">Home</a>");
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Profile for "+fname+" Created');");
            out.println("</script>");
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp open custprofile.jsp
                 
                
            RequestDispatcher rd =request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
       
            
    }   catch (SQLException ex) {
            Logger.getLogger(create.class.getName()).log(Level.SEVERE, null, ex);
            //end of modify
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

