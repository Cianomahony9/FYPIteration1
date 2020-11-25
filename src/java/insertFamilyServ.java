/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cian
 * 
 * 
 * Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
 * 
 */
public class insertFamilyServ extends HttpServlet {

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
            
            //start modify 
            
            
            // declaring variables to be inputted to db 
            
            String familyname1 =request.getParameter("familyname1");
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String height = request.getParameter("height");
            String weight = request.getParameter("weight");
            String insideleg = request.getParameter("insideleg");
            String armlength = request.getParameter("armlength");
            
            DbConInsertFam db = new DbConInsertFam();
            Connection coninsertfam = db.getConInsertFam();
            
            Statement stmt = coninsertfam.createStatement();
              stmt.executeUpdate("insert into " + familyname1 + "(name,familyname,gender,height,weight,insideleg,armlength) values('"+name+"','"+familyname1+"','"+gender+"','"+height+"','"+weight+"','"+insideleg+"','"+armlength+"')");
            out.println("data inserted");
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
