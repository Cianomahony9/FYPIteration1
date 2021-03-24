/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbConOrderSearch;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
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
//Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
public class searchOrder extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            // Begin Modify code
            //pulling data from searchOrder jsp
            
            
            
            String lname = request.getParameter("lname");
                    
            int ordernumber = Integer.parseInt(request.getParameter("ordernumber"));   // https://stackoverflow.com/questions/9570963/passing-int-as-parameter-from-jsp-to-servlet
             
            // databse connection method 
            DbConOrderSearch db = new DbConOrderSearch();
            Connection conordersearch = db.getConOrderSearch();
            
            // Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
            
           // resultset  code modifed from here and used alongside below link https://stackoverflow.com/questions/24229442/print-the-data-in-resultset-along-with-columnnames 
            
             //edits to above  result code acquired and modified from stackoverflow   https://stackoverflow.com/questions/33664078/java-jdbc-result-set-error-but-why?fbclid=IwAR2sGLy1pcaumBHPZzqOQPaM2BMZbNuHcnn85N9VC-MQ3jpCEwQcuf_IiTo  
            
            // sql statement to output search 
            Statement stmt = conordersearch.createStatement();
                ResultSet myRs2 = stmt.executeQuery("SELECT * FROM orderdetails WHERE ordernumber = '"+ordernumber+"'  AND custlname = '"+lname+"' ");
            
                while (myRs2.next() ){
                    String orderdate = myRs2.getString("orderdate");
                    
                    String collectiondate = myRs2.getString("collectiondate");
                    
                    String custfname = myRs2.getString("custfname");
                    
                    String custlname = myRs2.getString("custlname");
                    
                    String bikename = myRs2.getString("bikename");
                      
                    String bikelocation = myRs2.getString("bikelocation");
                     
                    String bikeprice = myRs2.getString("bikeprice");
                      
                    String framesize = myRs2.getString("framesize");
                       
                 
                 
                 // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp open displayorder.jsp
                 
                 // send serlvet work to the JSP page
               RequestDispatcher rd =request.getRequestDispatcher("ViewOrder.jsp");
               rd.include(request, response);
                    
                  // output order search
                       
                     out.print("<center><body>");
                     
                     out.print("<h1>Hello "+custfname+" " +custlname+ ".</h1>");
                        
                   out.print("<h3> Your Order Number is "+ordernumber+".</h3>");
                        
                        
                   out.print("<h3> You Placed Your Order on "+orderdate+".</h3>");
                       
                   out.print("<h3> Your "+bikename+"  will be Ready For Collection on "+collectiondate+" From "+bikelocation+".</h3>");
                        
                   out.print("<h3>The Framesize is "+framesize+"</h3>");
                      
                   out.print("<h3>The Total Price is €"+bikeprice+"</h3>");
                        
                   out.print(" <tr><th><a href=\"/FYPCian/HomePage.jsp\">Return To Home</a></th></tr>");
                   out.print(" <tr><th><a href=\"/FYPCian/SearchOrder.jsp\">New Search</a></th></tr>");
                       out.print("</body></center>");
                      
                   
                }
            } catch (SQLException ex) {
            Logger.getLogger(searchOrder.class.getName()).log(Level.SEVERE, null, ex);
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


