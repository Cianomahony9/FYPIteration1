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
 * //Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
 */
// Begin Modify code
public class DbConOrder {
    Connection conorder;
    
    public Connection getConOrder(){
        
        //Database connection 
        try{
            Class.forName("com.mysql.jdbc.Driver"); //db path 
            conorder = DriverManager.getConnection("jdbc:mysql://localhost:3306/order?useSSL=false","root","OmahonyCian@98");  //   "useSSL=false" causing problem @ driver Keystone issue fixed from Stack overflow https://stackoverflow.com/questions/57112139/keystore-was-tampered-with-or-password-was-incorrect-still-not-working
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbConOrder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DbConOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return conorder;
        //end of modify
    }
}
