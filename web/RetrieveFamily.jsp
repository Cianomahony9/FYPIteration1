<%-- 
    Document   : RetrieveFamily
    Created on : 23-Nov-2020, 19:28:07
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
        <form action="retrieveFamily"method="POST">
             <h1>Bikes4U.ie</h1>
             <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Search Family</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Enter Family Name</td>
                        <td><input type="text" name="familyname1"></td>
                       
                    </tr>
           
                    <td><center><input type="Submit" value="search"/></center></td>
               


             </table>
        </form>
    </center>
    </body>
</html>
