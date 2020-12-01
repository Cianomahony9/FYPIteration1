<%-- 
    Document   : Order
    Created on : 01-Dec-2020, 12:15:11
    Author     : Cian
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bikes4U.ie</title>
    </head>
    <body>
        
        
        <%  String name = request.getParameter("name");
            
            String familyname= request.getParameter("familyname");
            
            String bikename = request.getParameter("bikename");
            
             String framesize = request.getParameter("framesize");
            
            String price = request.getParameter("price");
            
            String location = request.getParameter("location");
            
            
            out.print("<center><table width=25% border=1><center>");
                 out.print("<center><h1>Order Summary:</h1></center>");
                  out.print("<center><h2>"+name+" "+familyname+ "</h2></center>");
                 out.print("<center");
                 out.print("<tr><th><t1>Bike Name</t1> <td>"+bikename+"</td> </th></tr>");
                 
                  out.print("<tr><th><t1>Frame Size</t1> <td>"+framesize+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Price</t1> <td>"+price+"</td> </th></tr>");
                 
                 
                 out.print("<tr><th><t1>Location</t1> <td>"+location+"</td> </th></tr>");
                  out.print("</table>");
                out.print("<center>");
                
                
                //code acquired and modified from  https://stackoverflow.com/questions/16982056/how-to-get-the-date-7-days-earlier-date-from-current-date-in-java
              //  used with https://stackoverflow.com/questions/34544341/i-need-to-print-only-the-date-dd-mm-yyyy-but-now-am-getting-dd-mm-yyyy-and-t
               DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
               
               Date date = new Date();
               String todate = dateFormat.format(date);
                
                
                Calendar cal = Calendar.getInstance();
                            cal.add(Calendar.DATE, +5);
                            Date todate1 = cal.getTime();
                            String fromdate = dateFormat.format(todate1);
                            
                            // 
                            out.println("Order Ready For Collection On  "+ dateFormat.format(todate1) + " From " +location);
                            
                            
           
            
                
        %>
    </body>
           
                    
                    
       
    </center>
    
</html>
