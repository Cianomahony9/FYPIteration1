<%-- 
    Document   : InsertFamily
    Created on : 24-Nov-2020, 15:19:55
    Author     : Cian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add To Family</title>
    </head>
    <body>
        
        <form  action="insertFamilyServ" method="POST">
                  
                <table width="400px" Border="1">
                    <tr>
                        <td colspan="2"><h1>Add To Family</h1></td>
                    </tr>
                
                    <tr>
                        <td>Family Name</td>
                        <td><input type="text" name="familyname1" id="familyname1"></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="name" id="name"></td>
                    </tr>
                    <tr>
                        <td>Height</td>
                        <td><input type="text" name="height" id="height"maxlength="8"></td>  <%-- --%>
                        </tr>
                        
                        <tr>
                        <td>Weight</td>
                        <td><input type="text" name="weight" id="weight" maxlength="5"></td>  <%-- --%>
                        </tr>
                        
                          <tr>
                        <td>Inside Leg Length</td>
                        <td><input type="text" name="insideleg" id="insideleg"></td>
                        </tr>
                        
                          <tr>
                        <td>Arm Length</td>
                        <td><input type="text" name="armlength" id="armlength"maxlength="4"></td> <%-- --%>
                        </tr>
                       
                        <tr>
                            <td>
                                <input type="Submit" value="Insert Profile"></td>
                           
                        </tr>
                </table>
        </form>
    </body>
</html>
