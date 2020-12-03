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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cian
 */
public class createOrder extends HttpServlet {

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
           
            
              String name = request.getParameter("name");
            
             String familyname = request.getParameter("familyname");
             
             String bikename = request.getParameter("bikename");
             
              String type = request.getParameter("type");
            
             String framesize = request.getParameter("framesize");
            
             // String price = request.getParameter("price");
            
             String location = request.getParameter("location");
             
             int ordernumber = 88;
             int price = 22;
             
             /// Creating Dates
              //code acquired and modified from  https://stackoverflow.com/questions/16982056/how-to-get-the-date-7-days-earlier-date-from-current-date-in-java
              //  used with https://stackoverflow.com/questions/34544341/i-need-to-print-only-the-date-dd-mm-yyyy-but-now-am-getting-dd-mm-yyyy-and-t
             //https://www.programiz.com/java-programming/examples/add-two-dates
             
              DateFormat dateFormat = new SimpleDateFormat("dd-MM-YYYY");
               
               Date colldate = new Date();
               String todate = dateFormat.format(colldate);
               
                Calendar calcollect = Calendar.getInstance();
                
                            calcollect.add(Calendar.DATE, +5);
                            Date colldate1 = calcollect.getTime();
                            String fromdate = dateFormat.format(colldate1);
                           // Date colldate1 = format.parse(colldate1);
                            
                            
                             Date orderdate = new Date();
                          String todate1 = dateFormat.format(orderdate); 
              
                         Calendar calorder  = Calendar.getInstance();
                           calorder.add(Calendar.DATE,-0);
                           Date orderdate1 = calorder.getTime();
                           String fromdate1 = dateFormat.format(orderdate1);
                           
         
            
                           
                           //db connection + SQL Statement 
                           
                           
                           DbConOrder db = new DbConOrder();
                        Connection conorder =db.getConOrder();
            
            
            
            
            
            Statement stmt = conorder.createStatement();
               stmt.executeUpdate("INSERT INTO orderdetails (ordernumber,orderdate,collectiondate,custfname,custlname,bikename,bikelocation,bikeprice,framesize) values('"+ordernumber+"','"+orderdate1+"','"+colldate1+"','"+name+"','"+familyname+"','"+bikename+"','"+location+"','"+price+"','"+framesize+"')");            
                           
                        
          
               
                     
                     //,orderdate,collectiondate
               //,DATE('"+orderdate+"''dd-MM-yyyy'),DATE('"+colldate1+"''dd-MM-yyyy'))
               
            
            out.print("<center><table width=25% border=1><center>");
                 out.print("<center><h1>Order Confirmation:</h1></center>");
                out.print("<center><h2>"+name+" " +familyname+ "</h2></center>");
                 out.print("<center");
                 
    
                 out.print("<tr><th><t1>Bike Name</t1> <td>"+bikename+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Bike Type</t1> <td>"+type+"</td> </th></tr>");
                 
                 
                  out.print("<tr><th><t1>Frame Size</t1> <td>"+framesize+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Price</t1> <td>"+price+"</td> </th></tr>");
                 
                 
                 out.print("<tr><th><t1>Collection Location</t1> <td>"+location+"</td> </th></tr>");
                 
               
              out.print("<tr><th><t1>Order Date</t1> <td>"+ dateFormat.format(orderdate1)+"</td> </th></tr>");
              
               out.print("<tr><th><t1>Collection Date</t1> <td>"+ dateFormat.format(colldate1)+"</td> </th></tr>");
                 
                  out.print(" <tr><th><a href=\"/FYPCian/index.html\">Return To Home</a></th></tr>");
                   
                  out.print("</table>");
                out.print("<center>");
            
            
        } catch (SQLException ex) {
            Logger.getLogger(createOrder.class.getName()).log(Level.SEVERE, null, ex);
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
