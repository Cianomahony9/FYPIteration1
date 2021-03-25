<%-- 
    Document   : createfamily2
    Created on : 24-Nov-2020, 14:15:57
    Author     : Cian O'Mahony 117436194

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
       
Modifications include changing navbar size and colour, inserting own titles and links,inserted own servlet form connector, changed footer copyright 
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
				<div class="inner">  <!-- Begin Modify code -->
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a> <!--link to home page -->
					<nav id="nav">
						<a href="HomePage.jsp">Home</a> <!--link to home page -->
                                                
						<a href="SearchOrder.jsp">Search Order</a> <!--link to search orders page -->
                                                
						<a href="BikeShops.jsp">View Bike Shops</a> <!--link to search orders page -->
                                                
                                                 <!--logout and displaying name on page code acquired and modified from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                        
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                        
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                       <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a>  <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
                  
 <!-- sending inputted name to servlet to create table -->
 <!-- form layout acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo -->
         
         <form action="createFamily1" method="POST">
              
                <table width="400px" Border="1"> 
                        <tr>
                        <td colspan="2"><center><h1>Add Family Profile</h1></center></td> 
                    </tr>
                    <!-- enter family name for creating family table for profile -->
                    <tr>
                        <td>Enter Family Name</td>
                     <td><input type="text" name="familyname1" value = ${custlogin.lname} readonly></td>
                    </tr>
                
                     
                </table>
                 <center> <input  type ="Submit" value="Create Family Profile" > </center>    <!-- submit values to servlet -->
        </form>
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

