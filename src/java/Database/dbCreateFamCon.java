package Database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Cian O'Mahony 117436194
 * 
 * Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
 */

  // Begin Modify code
public class dbCreateFamCon {
    Connection concreatefam;
    public Connection getCreateFamCon()  //get method to be called in servlet 
    {
         try {
            Class.forName("com.mysql.jdbc.Driver"); //db path 
           concreatefam=  DriverManager.getConnection("jdbc:mysql://localhost:3306/customer?useSSL=false","root","OmahonyCian@98");  //   "useSSL=false" causing problem @ driver Keystone issue fixed from Stack overflow https://stackoverflow.com/questions/57112139/keystore-was-tampered-with-or-password-was-incorrect-still-not-working
        } 
         // catch exceptions
         catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(dbCreateFamCon.class.getName()).log(Level.SEVERE, null, ex);
        }
    
 
       return concreatefam; 
    
       // end of modify 
    }
}
