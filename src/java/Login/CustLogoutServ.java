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
 * @author Cian O'Mahony 117436194
 */
// code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql

public class CustLogoutServ extends HttpServlet {
    //begin Modify
    private static final long serialVersionUTD = 1L;
    

   
    public CustLogoutServ(){
        super();
    }
   
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        //closing the session removes sesion variables
        if(session !=null){
            session.removeAttribute("custlogin");
           //sending user back to login page
             RequestDispatcher rd =request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        }
        //end modify
    }
}


