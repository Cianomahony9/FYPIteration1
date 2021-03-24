/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbConInsertFam;
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
 * Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
 * 
 */
public class insertFamilyServ extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
      
           // Begin Modify code
            
            
            // declaring variables from InsertFamily jsp to be inputted to db 
            
            String familyname1 =request.getParameter("familyname1");
            
            String name = request.getParameter("name");
            
            String gender = request.getParameter("gender");
            
            String height = request.getParameter("height");
            
            String weight = request.getParameter("weight");
            
            String insideleg = request.getParameter("insideleg");
            
            String armlength = request.getParameter("armlength");
            
            int telephone = Integer.parseInt(request.getParameter("telephone"));  //code acqired and modified from stack overflow  https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
            
            //database connection method 
            DbConInsertFam db = new DbConInsertFam();
            Connection coninsertfam = db.getConInsertFam();
            
            //sql statement to input into database
            Statement stmt = coninsertfam.createStatement();
            // insert family profiles to family table created
              stmt.executeUpdate("INSERT INTO " + familyname1 + "(name,familyname,gender,height,weight,insideleg,armlength,telephone) values('"+name+"','"+familyname1+"','"+gender+"','"+height+"','"+weight+"','"+insideleg+"','"+armlength+"','"+telephone+"')");
              
               // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            // display message when successfuly inserted data to db
       
          out.println("<script type=\"text/javascript\">");
            out.println("alert('Inserted Profile for "+name+" to Family "+familyname1+"');");
            out.println("</script>");
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp open insertfamily.jsp
                 
            RequestDispatcher rd =request.getRequestDispatcher("InsertFamily.jsp");
            rd.include(request, response);
        
        
        } catch (SQLException ex) {
            Logger.getLogger(insertFamilyServ.class.getName()).log(Level.SEVERE, null, ex);
            //end modify 
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
