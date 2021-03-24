/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbConCancelOrder;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
 */
public class cancelOrder extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //begin modify
            
            // pulling order number variable from custcancelorder.jsp
            int ordernumber = Integer.parseInt(request.getParameter("ordernumber"));   // https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
            
            
            // connection to database base
            DbConCancelOrder db = new DbConCancelOrder();
            Connection condeleteorder = db.getConDeleteOrder();
            
            
            //code acquired and modifed from https://alvinalexander.com/java/java-mysql-delete-query-example/
            // sql statement to delete record where order number = to number inputted to custcancelorder.jsp
            String query ="DELETE FROM orderdetails WHERE ordernumber ="+ordernumber;
            PreparedStatement preparedStmt = condeleteorder.prepareStatement(query);
            preparedStmt.execute();
           
           
            // alert to announce order has been deleted
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Order "+ordernumber+" Cancelled.');");
            out.println("</script>");
            
            // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp
            // redirect back to custcacelorder.jsp after deletetion
            RequestDispatcher rd =request.getRequestDispatcher("CustCancelOrder.jsp");
            rd.include(request, response);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(cancelOrder.class.getName()).log(Level.SEVERE, null, ex);
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


