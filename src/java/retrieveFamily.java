/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
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
 */
public class retrieveFamily extends HttpServlet {

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
           
         // Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
           //start modify 
            
            String familyname1 = request.getParameter("familyname1"); 
        
            DbConRetrieveFam db = new DbConRetrieveFam();
            Connection conretrievefam = db.getConRetrieveFam();
          
            
          // resultset  code modifed from here and used alongside below link https://stackoverflow.com/questions/24229442/print-the-data-in-resultset-along-with-columnnames 
            
             ////edits to above  result code acquired and modified from stackoverflow   https://stackoverflow.com/questions/33664078/java-jdbc-result-set-error-but-why?fbclid=IwAR2sGLy1pcaumBHPZzqOQPaM2BMZbNuHcnn85N9VC-MQ3jpCEwQcuf_IiTo  
            
             //code below was supported by classmate Joe Murphy who gave me link above due to problem outputting result 
             Statement stmt = conretrievefam.createStatement();
            for(int i=1; i<10;i++){
                ResultSet myRs1 = stmt.executeQuery("SELECT name, familyname, gender, height, weight, insideleg, armlength FROM "+familyname1+" WHERE user_id ="+i);
                //end 
              while(  myRs1.next()){
                String name = myRs1.getString("name");
                
                String familyname = myRs1.getString("familyname");
                
                String gender = myRs1.getString("gender");
                                                                                   // variable for results
                String height = myRs1.getString("height");
                
                String weight = myRs1.getString("weight");
                
                String insideleg = myRs1.getString("insideleg");
              
                String armlength = myRs1.getString("armlength");
                
                //end modify
                
                
                //code for table acquired and modifed from  https://www.c-sharpcorner.com/UploadFile/fd0172/how-to-fetch-records-from-database-using-servlet-in-java/
                //start of modify 
                //Print Table
                
              out.print("<center><table width=25% border=1><center>");
                 out.print("<center><h1>Family Result:"+familyname+"</h1></center>");

                 out.print("<center");
                 out.print("<tr><th><t1> Name</t1> <td>"+name+"</td> </th></tr>");
                 
                 
                 out.print("<tr><th><t1>Family Name</t1> <td>"+familyname+"</td> </th></tr>");
                 
                 
                 out.print("<tr><th><t1>Gender</t1> <td>"+gender+"</td> </th></tr>");
                
                 out.print("<tr><th><t1>Height</t1> <td>"+height+"</td> </th></tr>");
                 
                 
                 out.print("<tr><th><t1>Weight</t1> <td>"+weight+"</td> </th></tr>");
              
                 
                  out.print("<tr><th><t1>Inside Leg Length</t1><td>"+insideleg+"</td> </th></tr>");
                     
                 
                   out.print("<tr><th><t1>Arm Length</t1> <td>"+armlength+"</td> </th></tr>");
                   
                   
                  // code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/   
                  
                 out.print("<form action = 'searchBike'>");
                 out.print("<input type ='hidden' name='name' value ='"+name+"'>");
                 out.print("<input type ='hidden' name='familyname' value ='"+familyname+"'>");
                 
                 out.print("<input type ='hidden' name='insideleg' value ='"+insideleg+"'>");
                  out.print("<input type ='hidden' name='armlength' value ='"+armlength+"'>");
                  out.print("<td><input type='submit' value='Search Bike'></td>");
                   out.close();
                 
          
                out.print("</table>");
                out.print("<center>");
            }
            }
            //end of modify
            
        } catch (SQLException ex) {
            Logger.getLogger(retrieveFamily.class.getName()).log(Level.SEVERE, null, ex);
            
            
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
