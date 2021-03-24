package Login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Cian O'Mahony 117436194
 */
// code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql

//begin Modify
public class CustLoginServ extends HttpServlet {
private static final long serialVersionUID = 1L;
   
    
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        // retrieving email and password 
        String email = request.getParameter("email");
        String password = request.getParameter("password");
       
        //connection to db + run SQL statement
        CustDAO custDAO = new CustDAO();
        
        //checking email and password against db statement
        try {
            CustLogin custlogin = custDAO.checkLogin(email, password);
            
            //setting varible as session to be used across website name 
            if (custlogin != null){
                 HttpSession session = request.getSession();
                session.setAttribute("custlogin",custlogin);
                // moving to home page if check is right
                RequestDispatcher rd =request.getRequestDispatcher("HomePage.jsp");
            rd.include(request, response);
               //sent back to login page if wrong
            }else {
               //if login is unsuccessful user is redirected to login page
                 response.sendRedirect("login.jsp");
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CustLoginServ.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(CustLoginServ.class.getName()).log(Level.SEVERE, null, ex);
            
        }
       
                //end modify
        
        
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
