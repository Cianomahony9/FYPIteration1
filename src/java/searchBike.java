/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.DbConSearch;
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
 * @author Cian
 */


public class searchBike extends HttpServlet {

    
    
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
         
           
            // hidden value from retrieve family servlet 
              
               // code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/ 
             // Begin Modify code
            String insideleg = request.getParameter("insideleg");
            
            String armlength= request.getParameter("armlength");
            
            String name = request.getParameter("name");
            
            String familyname = request.getParameter("familyname");
            
             //end of modify 
     // connection to database method
            
            DbConSearch db = new DbConSearch();
            Connection consearch = db.getConSearch();
            
           
          // orginal code modifed from here and used alongside below link https://stackoverflow.com/questions/24229442/print-the-data-in-resultset-along-with-columnnames 
            
             ////edits to above  result code acquired and modified from stackoverflow   https://stackoverflow.com/questions/33664078/java-jdbc-result-set-error-but-why?fbclid=IwAR2sGLy1pcaumBHPZzqOQPaM2BMZbNuHcnn85N9VC-MQ3jpCEwQcuf_IiTo  
            
             //**code below was supported by classmate Joe Murphy walked me through problem output statement link above give **
            //Start of modify
            //sql to output data 
             Statement stmt = consearch.createStatement();
             ResultSet myRs = stmt.executeQuery("SELECT * FROM bikes WHERE framesize <='"+insideleg+"'AND saddletohandle <='"+armlength+"'");   // problems solved from stack overflow  https://stackoverflow.com/questions/9192781/having-a-mysql-error-unknown-column-where-clause
            
           
             while(myRs.next()){
                String bikename = myRs.getString("bikename");
                
                String type = myRs.getString("type");
            
                String framesize = myRs.getString("framesize");                                // varialbes for results 
                
                String saddletohandle = myRs.getString("saddletohandle");
                
                String price = myRs.getString("price");
                
                String location = myRs.getString("location");
                
                //Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo 
                
                 //code for table acquired and modifed from  https://www.c-sharpcorner.com/UploadFile/fd0172/how-to-fetch-records-from-database-using-servlet-in-java/
                //start of modify 
                //Print Table
                //output results
                 out.print("<center><table width=25% border=1><center>");
                 
                 out.print("<center><h1>Recommended Bike For: "+name+" "+familyname+"</h1></center>");

                 out.print("<tr><th><t1>Bike Name</t1> <td>"+bikename+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Bike Type</t1> <td>"+type+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Framesize</t1> <td>"+framesize+"</td> </th></tr>");
              
                 out.print("<tr><th><t1>Saddle to HandleBar length</t1>  <td>"+saddletohandle+"</td> </th></tr>");
                
                 out.print("<tr><th><t1>Price</t1> <td>€"+price+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Location</t1> <td>"+location+"</td> </th></tr>");
                 
                 out.print("</center></table>");
                  
                 // modified from https://stackoverflow.com/questions/24176684/how-to-show-alert-in-a-jsp-from-a-servlet-and-then-redirect-to-another-jsp open recommendedbike.jsp
                 // send serlvet work to display on the JSP page
                   RequestDispatcher rd =request.getRequestDispatcher("RecommendedBike.jsp");
                  rd.include(request, response);
                 
                 // code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/  
                 //when create order clicked hidden values to send to order jsp
                out.print("<form action = 'Order.jsp'>");
                 out.print("<input type ='hidden' name='name' value ='"+name+"'>");
                 
                 out.print("<input type ='hidden' name='familyname' value ='"+familyname+"'>");
                 
                 out.print("<input type ='hidden' name='framesize' value ='"+framesize+"'>");
                  
                 out.print("<input type ='hidden' name='bikename' value ='"+bikename+"'>");
                 
                 out.print("<input type ='hidden' name='price' value ='"+price+"'>");
                 
                 out.print("<input type ='hidden' name='type' value ='"+type+"'>");
                 
                 out.print("<input type ='hidden' name='location' value ='"+location+"'>");
                  
                 out.print("<td><input type='submit' value='Create Order'></td>");
                  
                out.print("</form>");
                out.print("<center>");
               
                //end of modify 
             }
                 
        } catch (SQLException ex) {
            Logger.getLogger(searchBike.class.getName()).log(Level.SEVERE, null, ex);
            
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
