/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.IOException;
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
// code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql

public class CustLogoutServ extends HttpServlet {
    private static final long serialVersionUTD = 1L;
    

   
    public CustLogoutServ(){
        super();
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
        HttpSession session = request.getSession(false);
        //closing the session 
        if(session !=null){
            session.removeAttribute("custlogin");
           //sending user back to login page
             RequestDispatcher rd =request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        }
        
    }
}

