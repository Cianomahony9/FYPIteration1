/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cian
 */
public class DbConUpdateRecords {
     
    Connection conupdaterecord;
    public Connection getConUpdateRecord()  //get method to be called in servlet 
    {
        //database connection
        try{
            Class.forName("com.mysql.jdbc.Driver"); //db path 
           conupdaterecord =  DriverManager.getConnection("jdbc:mysql://localhost:3306/customer?useSSL=false","root","OmahonyCian@98");   //   "useSSL=false" causing problem @ driver Keystone issue fixed from Stack overflow https://stackoverflow.com/questions/57112139/keystore-was-tampered-with-or-password-was-incorrect-still-not-working
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DbConUpdateRecords.class.getName()).log(Level.SEVERE, null, ex);
        }
    
 
       return conupdaterecord; 
       //end of modify 
}
}