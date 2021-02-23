package Login;


import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Cian
 */

// code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql 
public class CustLogin implements Serializable {
    
    // declaring variables 
    private static final long serialVersionUTD = 1L;
    private String email;
    private String password;
    private String fname;
    
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
    public String getFname(){
        return fname;
    }
    //setter
    public void setFname(String fname){
        this.fname = fname;
   }
    
}

