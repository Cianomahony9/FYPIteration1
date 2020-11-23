<%-- 
    Document   : CustProfile
    Created on : 22-Nov-2020, 20:27:03
    Author     : Cian

Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Profile</title>
    </head>
    <body>
         <form  action="create" method="POST">
                  
                <table width="400px" Border="1">
                    <tr>
                        <td colspan="2"><h1>Create Profile</h1></td>
                    </tr>
                
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" id="fname"></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" id="lname"></td>
                        </tr>
                        
                        <tr>
                        <td>Telephone</td>
                        <td><input type="text" name="telephone" id="telephone"></td>
                        </tr>
                        
                          <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" id="address"></td>
                        </tr>
                        
                          <tr>
                        <td>Eircode</td>
                        <td><input type="text" name="eircode" id="eircode"></td>
                        </tr>
                        
                          <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" id="email"></td>
                        </tr>
                        
                          <tr>
                        <td>County</td>
                        <td><input type="text" name="county" id="county"></td>
                        </tr>
                        
                        
                        
                        
                        <tr>
                            <td>
                                <input type="Submit" value="Create Profile"></td>
                            <td>
                            <a href="/FYPCian/Family.jsp">Create Family Profile</a>
                            </td>
                        </tr>
                </table>
        </form>
    </body>
</html>
