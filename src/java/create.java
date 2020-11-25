/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

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
            
            
            // start of modify
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            int telephone = Integer.parseInt(request.getParameter("telephone"));  //*   https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet**//
            String address = request.getParameter("address");
            String eircode = request.getParameter("eircode");
            String email = request.getParameter("email");
            String county = request.getParameter("county");
            String password = request.getParameter("password");
            
            DbCon db = new DbCon();
            Connection con = db.getCon();
            
            Statement stmt = con.createStatement();
            stmt.executeUpdate("insert into profile (fname,lname,telephone,address,eircode,email,county,password) values('"+fname+"','"+lname+"','"+telephone+"','"+address+"','"+eircode+"','"+email+"','"+county+"','"+password+"')");
            out.println("data inserted");
            
    }   catch (SQLException ex) {
            Logger.getLogger(create.class.getName()).log(Level.SEVERE, null, ex);
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

