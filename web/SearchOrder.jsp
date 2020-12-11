<%-- 
    Document   : SearchOrder
    Created on : 07-Dec-2020, 11:37:36
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
        <form action="searchOrder"method="POST">
             <h1>Bikes4U.ie</h1>
             <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Search Order</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Enter Your Order Number</td>
                        <td><input type="text" name="ordernumber"></td>
                       
                    </tr>
           
                    <td><center><input type="Submit" value="search"/></center></td>
               


             </table>
        </form>
    </center>
    </body>
</html>
