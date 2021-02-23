/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.Serializable;

/**
 *
 * @author Cian
 */
 // code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
public class AdminLogin implements Serializable {
    
    
    private static final long serialVersionUTD = 2L;
    private String email;
    private String password;
    private String store;
    
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
         }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getStore(){
        return store;
    }
    public void setStore(String store){
        this.store = store;
         }
}