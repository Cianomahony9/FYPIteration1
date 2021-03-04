/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbConUpdateRecords;
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
 */
public class updaterecord extends HttpServlet {

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
           
              String custfname = request.getParameter("custfname");
           String custlname = request.getParameter("custlname");
           int custtelephone = Integer.parseInt(request.getParameter("custtelephone"));   // https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
            
           
           
           String height = request.getParameter("height");
           String weight = request.getParameter("weight");
           String insideleglength = request.getParameter("insideleg");
           String armlength = request.getParameter("armlength");
           
           
           DbConUpdateRecords db = new DbConUpdateRecords();
            Connection conupdaterecord = db.getConUpdateRecord();
           
            Statement stmt = conupdaterecord.createStatement();
           stmt.executeUpdate("UPDATE "+ custlname +" SET height = '"+height+"' , weight = '"+weight+"' , insideleg = '"+insideleglength+"' , armlength = '"+armlength+"'  " + "WHERE telephone = '"+custtelephone+"' AND name = '"+custfname+"' AND familyname = '"+custlname+"'  ");
            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record for "+custfname+" "+custlname+" Updated');");
            out.println("</script>");
            
            
            RequestDispatcher rd =request.getRequestDispatcher("ViewCustAccount.jsp");
            rd.include(request, response);
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(updaterecord.class.getName()).log(Level.SEVERE, null, ex);
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
