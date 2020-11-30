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
        <title>Bikes4U.ie</title>
    </head>
    <body>
    <center>
        <form  action="insertFamilyServ" method="POST">
                   <h1>Bikes4U.ie</h1>
                <table width="400px" Border="1">
                    <tr>
                        <td colspan="2"><center><h1>Add Person To Family</h1></center></td> 
                    </tr>
                
                    <tr>
                        <td><h1>Family Name</h1></td>
                        <td><input type="text" name="familyname1" ></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="name" ></td>
                    </tr>
                    
                    <tr>
                        <td>Gender</td>
                        <td><input type="text" name="gender" maxlength="7"></td>   <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                    <tr>
                        <td>Height</td>
                        <td><input type="text" name="height" maxlength="8"></td>   <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp-servlet --%>
                        </tr>
                        
                        <tr>
                        <td>Weight</td>
                        <td><input type="text" name="weight"  maxlength="5"></td>   <%--  max lenght condition acquired and modified from https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                        
                          <tr>
                        <td>Inside Leg Length</td>
                        <td><input type="text" name="insideleg" ></td>
                        </tr>
                        
                          <tr>
                        <td>Arm Length</td>
                        <td><input type="text" name="armlength" maxlength="4"></td>  <%--  max lenght condition acquired and modified from  https://www.w3schools.com/tags/att_input_maxlength.asp  --%>
                        </tr>
                       
                        <tr>
                            <td>
                        <center> <input type="Submit" value="Insert Profile"> </center>  </td>
                        <td>  <center><a href="/FYPCian/RetrieveFamily.jsp">Retrieve Family </a> </center> </td>
                        </tr>
                </table>
        </form>
    </center>
    </body>
</html>
