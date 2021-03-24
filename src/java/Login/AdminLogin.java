/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.Serializable;

/**
 *
 * @author Cian O'Mahony 117436194
 */
 // code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql
//begin modify
public class AdminLogin implements Serializable {
    // getters and setters page
    
    private static final long serialVersionUTD = 2L;
    private String email;
    private String password;
    private String store;
    
    //getter
    public String getEmail(){
        return email;
    }
    //setter
    public void setEmail(String email){
        this.email = email;
         }
    //getter
    public String getPassword(){
        return password;
    }
    //setter
    public void setPassword(String password){
        this.password = password;
    }
    //getter
    public String getStore(){
        return store;
    }
    //setter
    public void setStore(String store){
        this.store = store;
         }
}
//end modify