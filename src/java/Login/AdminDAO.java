/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import Database.DbConAdminLogin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Cian O'Mahony 117436194
 */

public class AdminDAO {
    // code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
    //begin modify
    public  AdminLogin checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
      
      // connect to db   https://www.youtube.com/watch?v=akW6bzoRcZo
       DbConAdminLogin db = new DbConAdminLogin();
       Connection conadminlogin = db.getAdminLoginCon();
       
       // sql statement to check email and password against database
        String sql = "SELECT * FROM adminprofile where storeemail = ? and password = ?";
        PreparedStatement statement =conadminlogin.prepareStatement(sql);
        statement.setString(1,email);
        statement.setString(2,password);
        
        ResultSet rs = statement.executeQuery();
        
        // setting storename as variabe
        AdminLogin adminlogin = null;
        //storename pulled on all pages
        if(rs.next()){
            adminlogin = new AdminLogin();
            adminlogin.setStore(rs.getString("store"));
            adminlogin.setEmail(email);
        }
        
        conadminlogin.close();
        
        return adminlogin;
        //end modify
    }
}
