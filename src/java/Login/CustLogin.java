package Login;


import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Cian O'Mahony 117436194
 */

// code acquired and modifed from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql 
public class CustLogin implements Serializable {
    
    // declaring variables 
    private static final long serialVersionUTD = 1L;
    private String email;
    private String password;
    private String fname;
    private String lname;
    private Integer telephone;
    private String address;
    private String eircode;
    private String county;
    
    
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
    //getter
    public String getLname(){
        return lname;
    }
    //setter
    public void setLname(String lname){
        this.lname = lname;
   }
     //getter
    public String getAddress(){
        return address;
    }
     //getter
    public String getEircode(){
        return eircode;
    }
    //setter
    public void setEircode(String eircode){
        this.eircode = eircode;
   }
     //getter
    public String getCounty(){
        return county;
    }
    //setter
    public void setCounty(String county){
        this.county = county;
   }
    //setter
    public void setAddress(String address){
        this.address = address;
   }
     //getter
    public Integer getTelephone(){
        return telephone;
    }
    //setter
    public void setTelephone(int telephone){
        this.telephone = telephone;
   }
    
    
}

