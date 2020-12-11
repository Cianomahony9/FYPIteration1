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
        
     
        
        <% 
            
            
              // code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/  
                  
            String name = request.getParameter("name");
            
            String type= request.getParameter("type");
            
            String familyname= request.getParameter("familyname");
            
            String bikename = request.getParameter("bikename");
            
             String framesize = request.getParameter("framesize");
            
             
                  request.setCharacterEncoding("UTF-8");
            String price = request.getParameter("price");
            
            String location = request.getParameter("location");
            
            
            
           /// Creating Dates
              //code acquired and modified from  https://stackoverflow.com/questions/16982056/how-to-get-the-date-7-days-earlier-date-from-current-date-in-java
              //  used with https://stackoverflow.com/questions/34544341/i-need-to-print-only-the-date-dd-mm-yyyy-but-now-am-getting-dd-mm-yyyy-and-t
            
             
              DateFormat dateFormat = new SimpleDateFormat("dd/MM/yy");
               
               Date colldate = new Date();
               String todate = dateFormat.format(colldate);
                
                
                Calendar calcollect = Calendar.getInstance();
                Calendar calorder  = Calendar.getInstance();
                
                
                            calcollect.add(Calendar.DATE, +5);
                            Date colldate1 = calcollect.getTime();
                            String fromdate = dateFormat.format(colldate1);
                            
                           calorder.add(Calendar.DATE,+0);
                           Date orderdate = calorder.getTime();
                           String fromdate1 = dateFormat.format(orderdate);
           
                           
                            //code for table acquired and modifed from  https://www.c-sharpcorner.com/UploadFile/fd0172/how-to-fetch-records-from-database-using-servlet-in-java/
                //start of modify 
                //Print Table
                           
            
            out.print("<center><table width=25% border=1><center>");
                 out.print("<center><h1>Order Summary:</h1></center>");
                  out.print("<center><h2>"+name+" "+familyname+ "</h2></center>");
                 out.print("<center");
                 out.print("<tr><th><t1>Bike Name</t1> <td>"+bikename+"</td> </th></tr>");
                 
                  out.print("<tr><th><t1>Bike Type</t1> <td>"+type+"</td> </th></tr>");
                 
                  out.print("<tr><th><t1>Frame Size</t1> <td>"+framesize+"</td> </th></tr>");
                 
                 out.print("<tr><th><t1>Price</t1> <td>€"+price+"</td> </th></tr>");
                 
                 
                 out.print("<tr><th><t1>Location</t1> <td>"+location+"</td> </th></tr>");
                 
                  out.println("<tr><th><t1>Order On</t1> <td>"+ dateFormat.format(orderdate) + "</td> </th></tr>");
                 
                  out.println("<tr><th><t1>Collection On</t1> <td>"+ dateFormat.format(colldate1) + "</td> </th></tr>");
                 
                  
                  
                  out.print("<center><table width=25% border=1><center>");
                 out.print("<center><h1>Payment:</h1></center>");
                 
                 out.print("<tr><th><t1>Name On Card</t1> <td><input type=text ></td> </th></tr>");
                 out.print("<tr><th><t1>Card Number</t1> <td><input type=text maxlength=16 ></td> </th></tr>");
                 out.print("<tr><th><t1>Expiry</t1> <td><input type=text maxlength=5 ></td> </th></tr>");
                  out.print("<tr><th><t1>CVC</t1> <td><input type=text maxlength=3 ></td> </th></tr>");
                  
                
                  // code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/  
                  
                  out.print("<form action = 'createOrder'>");
                            out.print("<input type ='hidden' name='name' value ='"+name+"'>");
                        
                 
                             out.print("<input type ='hidden' name='familyname' value ='"+familyname+"'>");
                 
                             out.print("<input type ='hidden' name='framesize' value ='"+framesize+"'>");
                             
                             out.print("<input type ='hidden' name='type' value ='"+type+"'>");
                  
                             out.print("<input type ='hidden' name='bikename' value ='"+bikename+"'>");
                 
                             out.print("<input type ='hidden' name='price' value ='"+price+"'>");
                
                             out.print("<input type ='hidden' name='location' value ='"+location+"'>");
                  
                          
                         
                                
                             
                             out.print("<td><input type='submit' value='Confirm Order'></td>");
                             out.close();
                             
                             
                  out.print("</table>");
                out.print("<center>");
                
              
                out.print("<center><table width=25% border=1><center>");
                 out.print("<center><h1>Payment:</h1></center>");
                 
                 out.print("<tr><th><t1>Card Number</t1> <td></td> </th></tr>");
                
              
                            
                           
            
                
        %>
    
  
    
    
    </body>
           
                    
                    
       
    
    
</html>
