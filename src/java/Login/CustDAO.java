package Login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Database.DbConCustLogin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

/**
 *
 * @author Cian
 */

public class CustDAO {
    
    // code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
    
    public  CustLogin checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
      
      // connect to db  
       DbConCustLogin db = new DbConCustLogin();
       Connection concustlogin = db.getCustLoginCon();
       
       // sql statement to check email and password against database
        String sql = "SELECT * FROM profile where email = ? and password = ?";
        PreparedStatement statement = concustlogin.prepareStatement(sql);
        statement.setString(1,email);
        statement.setString(2,password);
        
        ResultSet rs = statement.executeQuery();
        
        // setting fname as variabe
        CustLogin custlogin = null;
        
        
        // creating variable for db values
        if(rs.next()){
            custlogin = new CustLogin();
            custlogin.setFname(rs.getString("fname"));
            custlogin.setEmail(email);
        }
        
        concustlogin.close();
        
        return custlogin;
    }
}
  

  