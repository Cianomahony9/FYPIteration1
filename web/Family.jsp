<%-- 
    Document   : createfamily2
    Created on : 24-Nov-2020, 14:15:57
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
    <body> <%-- begin modify --%>
    <center>   <form action="createFamily1" method="POST">
              
                <table width="400px" Border="1"> 
                   
                
                           <h1>Bikes4U.ie</h1>
                        <tr>
                        <td colspan="2"><center><h1>Add Family</h1></center></td> 
                    </tr>
                     <td>Family Name</td>
                     <td><input type="text" name="familyname1" ></td>  <%-- id links to db in servlet --%>
                    </tr>
                
                    <td> <center><input  type ="Submit" value="insert"/> </center> </td>   <%-- submit values to servlet --%>
                    <td> <center> <a href="/FYPCian/InsertFamily.jsp">Insert Profile to Family </a> </center></td>  <%-- go to insert family page --%>
                    
            
        </form>
    </center>  
                    <%-- end modify --%>
    </body>
</html>
