<%-- 
    Document   : CustProfile
    Created on : 22-Nov-2020, 20:27:03
    Author     : Cian

*** Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bikes4U.ie</title>    
    </head>
    <body>
    <center>                     <%-- begin modify code --%>
        
         <form  action="create" method="POST">
                  
                <table width="400px" Border="1">
                    <h1>Bikes4U.ie</h1>
                    <tr>
                        <td colspan="2"><center><h1>Create Profile</h1></center></td>
                    </tr>
                
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" ></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" ></td>
                        </tr>
                        
                        <tr>
                        <td>Telephone</td>
                        <td><input type="text" name="telephone"  maxlength="10"></td>  <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                        
                          <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" ></td>
                        </tr>
                        
                          <tr>
                        <td>Eircode</td>
                        <td><input type="text" name="eircode" maxlength="7"></td> <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                          <tr>
                        <td>County</td>
                        <td><input type="text" name="county" ></td>
                        </tr>
                        
                          <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" ></td>
                        </tr>
                        
                          <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" ></td>
                        </tr>
                        
                        <tr>
                            <td>
                        <center><input type="Submit" value="Create Profile"></center></td>
                           <td>
                          <%--  <center><a href="/FYPCian/Family.jsp">Create Family Profile</a></center>  --%>
                            </td> 
                        </tr>
                </table>
        </form>
    </center>           <%-- End modify code --%>
    </body>
</html>
