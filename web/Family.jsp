<%-- 
    Document   : Family
    Created on : 22-Nov-2020, 20:23:28
    Author     : Cian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Family</title>
    </head>
    <body>
        <body>
         <form  action="createfamily" method="POST">
                  
                <table width="400px" Border="1">
                    <tr>
                        <td colspan="2"><h1>Create Family Profile</h1></td>
                    </tr>
                
                    <tr>
                        <td>Family Name</td>
                        <td><input type="text" name="familyname" id="familyname"></td>
                    </tr>
                    <tr>
                        <td>Family Head Name</td>
                        <td><input type="text" name="familyheadname" id="familyheadname"></td>
                        </tr>
                        
                          <tr>
                        <td>Family Address</td>
                        <td><input type="text" name="familyaddress" id="familyaddress"></td>
                        </tr>
                 
                          <tr>
                        <td>Family Head Email</td>
                        <td><input type="text" name="familyheademail" id="familyheademail"></td>
                        </tr>
                        
                        
                        <tr>
                            <td>
                                <input type="Submit" value="Create Family Profile"></td>
                                
                        </tr>
                </table>
        </form>
    </body>
    </body>
</html>
