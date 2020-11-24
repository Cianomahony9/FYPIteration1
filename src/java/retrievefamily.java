/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
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
 ******** Code acquired and modified from https://www.c-sharpcorner.com/UploadFile/fd0172/how-to-fetch-records-from-database-using-servlet-in-java/ *****
 * 
 */
public class retrievefamily extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet retrievefamily</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet retrievefamily at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
        
        // code acquired and modifed from https://www.c-sharpcorner.com/UploadFile/fd0172/how-to-fetch-records-from-database-using-servlet-in-java/
        
        
        response.setContentType("text/html");
       try (PrintWriter out = response.getWriter()){
        String familyname1 = request.getParameter("familyname1"); 
        
            DbConRetrieveFam db = new DbConRetrieveFam();
            Connection conretrievefam = db.getConRetrieveFam();
            
            //search second name to output columns in DB
            PreparedStatement ps=conretrievefam.prepareStatement("select * from customer where table=?");
            ps.setString(1, familyname1);
           out.print("<table width=25% border=1>");
           out.print("<center><h1>Result:</h1></center>");
           out.print("<a href=/FYPCian/RetrieveFamily.jsp><p1>Search</p1> ");
            ResultSet rs=ps.executeQuery();
            
            /* print table */
            ResultSetMetaData rsmd =rs.getMetaData();
            while(rs.next())
            {
                out.print("<tr>");
                out.print("<td>"+rsmd.getColumnName(1)+"</td>");
                out.print("<td>"+rs.getString(1)+"</td></tr>");
                
                out.print("<td>"+rsmd.getColumnName(2)+"</td>");
                out.print("<td>"+rs.getString(2)+"</td></tr>");
                
                out.print("<td>"+rsmd.getColumnName(3)+"</td>");
                out.print("<td>"+rs.getString(3)+"</td></tr>");
                
                out.print("<td>"+rsmd.getColumnName(4)+"</td>");
                out.print("<td>"+rs.getString(4)+"</td></tr>");
                
                out.print("<td>"+rsmd.getColumnName(5)+"</td>");
                out.print("<td>"+rs.getString(5)+"</td></tr>");
                
                 
            }
           
            out.print("</table>");
            out.print("<a href=/FYPCian/RetrieveFamily.jsp><p1>Search</p1> ");
            
            
           
    }   catch (SQLException e2) {
            Logger.getLogger(retrievefamily.class.getName()).log(Level.SEVERE, null, e2);
            
            e2.printStackTrace();
        }
       finally{out.close();
       
       }
    }
    
    
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
