/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;


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
 * @author Cian
 */

public class AdminLoginServ extends HttpServlet {
       private static final long serialVersionUID = 1L;
   
        // code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String email = request.getParameter("email");
        String password = request.getParameter("password");
       
        
       AdminDAO adminDAO = new AdminDAO();

         try{
              AdminLogin adminlogin = adminDAO.checkLogin(email, password);
              
               //setting varible as session to be used across website name 
            if (adminlogin != null){
                 HttpSession session = request.getSession();
                session.setAttribute("adminlogin",adminlogin);
                // moving to home page if check is right
                RequestDispatcher rd =request.getRequestDispatcher("AdminPage.jsp");
            rd.include(request, response);
               //sent back to login page if wrong
            }else {
                 response.sendRedirect("AdminLogin.jsp");
            }
             } catch (ClassNotFoundException ex) {
               Logger.getLogger(AdminLoginServ.class.getName()).log(Level.SEVERE, null, ex);
           } catch (SQLException ex) {
               Logger.getLogger(AdminLoginServ.class.getName()).log(Level.SEVERE, null, ex);
           }


       
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
