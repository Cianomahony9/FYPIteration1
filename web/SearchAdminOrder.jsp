<%-- 
    Document   : SearchAdminOrder
    Created on : 20-Jan-2021, 15:01:53
    Author     : Cian O'Mahony 117436194
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
*** Code acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo ***

Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing navabar size and colour, inserted own titles and links, inserted link to own database, changed footer copyright


-->
<!-- Begin Modify code -->

  
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
				<div class="inner">
					<a href="AdminPage.jsp" class="logo">Bikes4U.ie</a>
                                        
					<nav id="nav">
						<a href="AdminPage.jsp">Home</a>
                                                
						<a href="SearchAdminOrder.jsp">Search Order</a>
                                                
						<a href="SearchAdminCust.jsp">View Customer Records</a>
                                                
                                                <a href="SearchAdminCustProfiles.jsp">View Customer Profiles</a>
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                                <a href ="<%=request.getContextPath() %>/AdminLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                        <h1>Logged in For ${adminlogin.store} </h1>
                                         </div>
			</header>
                
             
<!-- search servlet connection send to SearchAdminStoreOrder.jsp -->
 <!-- form layout acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo -->
       <center>
   <form action="SearchAdminStoreOrder.jsp"method="POST"> 
             <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Search Store Open Orders</h1></center></td> 
                    </tr>
                    
                    <tr>
                        <td>Store Name</td>
                        <td><input  name="orderstorename" value =${adminlogin.store} readonly ></td>
                       
                    </tr>
           </table>
                    <center><input type="Submit" value="search"/></center>
               
            
        </form>
    </center>
     
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
