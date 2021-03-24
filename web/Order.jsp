<%-- 
    Document   : Order
    Created on : 01-Dec-2020, 12:15:11
    Author     : Cian O'Mahony 117436194
*** Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
            <title>Bikes4U.ie</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/FYPCian/css/main.css" />
	</head>
	<body class="subpage">

		<!-- Header -->
			<header id="header">
				<div class="inner"> <!-- Begin Modify code -->
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a>
					<nav id="nav">
						<a href="HomePage.jsp">Home</a>
                                                
						<a href="SearchOrder.jsp">Search Order</a>
                                                
						<a href="BikeShops.jsp">View Bike Shops</a>
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                         <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a> <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
                
              
      
        <% 
            
            //*** Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***
// code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/  
//pulling data from servlet
String name = request.getParameter("name");
            
String type= request.getParameter("type");
            
String familyname= request.getParameter("familyname");
            
String bikename = request.getParameter("bikename");
            
String framesize = request.getParameter("framesize");
           
String price = request.getParameter("price");
            
String location = request.getParameter("location");
          
 /// Creating Dates
//code acquired and modified from  https://stackoverflow.com/questions/16982056/how-to-get-the-date-7-days-earlier-date-from-current-date-in-java
//  used with https://stackoverflow.com/questions/34544341/i-need-to-print-only-the-date-dd-mm-yyyy-but-now-am-getting-dd-mm-yyyy-and-t
            
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yy");
                   
Calendar calcollect = Calendar.getInstance();
Calendar calorder  = Calendar.getInstance();
                
calorder.add(Calendar.DATE,+0);
Date orderdate = calorder.getTime();
                          
calcollect.add(Calendar.DATE, +5);
Date colldate1 = calcollect.getTime();
                          
                            

//code for table acquired and modifed from  https://www.c-sharpcorner.com/UploadFile/fd0172/how-to-fetch-records-from-database-using-servlet-in-java/
//start of modify 
//Print Table
                           
            
out.print("<center><table width=25% border=1><center>");

out.print("<center><h1>Order Summary:</h1></center>");

out.print("<center><h2>"+name+" "+familyname+ "</h2></center>");

out.print("<center");

out.print("<tr><th><t1>Bike Name</t1> <td>"+bikename+"</td> </th></tr>");

out.print("<tr><th><t1>Bike Type</t1> <td>"+type+"</td> </th></tr>");

out.print("<tr><th><t1>Frame Size </t1> <td>"+framesize+"cm</td> </th></tr>");

out.print("<tr><th><t1>Price</t1> <td>€"+price+"</td> </th></tr>");

out.print("<tr><th><t1>Location</t1> <td>"+location+"</td> </th></tr>");

out.println("<tr><th><t1>Order On</t1> <td>"+ dateFormat.format(orderdate) + "</td> </th></tr>");

out.println("<tr><th><t1>Collection On</t1> <td>"+ dateFormat.format(colldate1) + "</td> </th></tr>");

out.print("<center><table width=25% border=1><center>");

out.print("<center><h1>Payment:</h1></center>");
                 
                 
// payment input
                 
out.print("<tr><th><t1>Name On Card</t1> <td><input type=text ></td> </th></tr>");

out.print("<tr><th><t1>Card Number</t1> <td><input type=text maxlength=16 ></td> </th></tr>");

out.print("<tr><th><t1>Expiry</t1> <td><input type=text maxlength=5 ></td> </th></tr>");

out.print("<tr><th><t1>CVC</t1> <td><input type=text maxlength=3 ></td> </th></tr>");
                  
                
// code for linking hidden values modified and acquired from https://www.geeksforgeeks.org/hidden-form-field-using-annotation-java-servlet/  
// hidden values sending data to servlet
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
                
        %>
       
 <!-- Footer -->
	<footer id="footer">
		<div class="inner">
		<div class="flex">
		<div class="copyright">
			&copy; Bikes4U.ie.
		</div>
		<!-- end modify -->
		</div>
		</div>
	</footer>

		<!-- Scripts -->
			<script src="/FYPCian/js/jquery.min.js"></script>
			<script src="/FYPCian/js/skel.min.js"></script>
			<script src="/FYPCian/js/util.js"></script>
			<script src="/FYPCian/js/main.js"></script>
   
       
          </body>
</html>
