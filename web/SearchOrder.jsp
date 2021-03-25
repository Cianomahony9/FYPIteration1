<%-- 
    Document   : SearchOrder
    Created on : 07-Dec-2020, 11:37:36
    Author     : Cian O'Mahony 117436194
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications include changing navabar size and colour, inserted own titles and links, changed footer copyright

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
					<a href="HomePage.jsp" class="logo">Bikes4U.ie</a> <!-- link to home page -->
					<nav id="nav">
						<a href="HomePage.jsp">Home</a> <!-- link to home page -->
                                                
						<a href="SearchOrder.jsp">Search Order</a> <!-- link to search order page -->
                                                
						<a href="BikeShops.jsp">View Bike Shops</a> <!-- link to view bike shops page -->
                                                
                                                 <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                                <a href ="<%=request.getContextPath() %>/CustLogoutServ"> Logout</a>
					</nav>
					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
                                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                                          <a href="ViewCustAccount.jsp">Logged in as ${custlogin.fname}</a>  <!-- Custs name is displayed from db - When clicked user is redirected to account details page -->
				</div>
			</header>
                  
        <!-- data sent to servlet to search db -->
        <!-- form layout acquired and modified from https://www.youtube.com/watch?v=akW6bzoRcZo -->
         <form action="searchOrder"method="POST">
            
             <table width="400px" Border="1">
                 <tr>
                        <td colspan="2"><center><h1>Search Order</h1></center></td> 
                    </tr>
                    
                     <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value = ${custlogin.lname} readonly></td>  <!-- session variable code acquired and modified from https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                   
                    <tr>
                        <td>Enter Your Order Number</td>
                        <td><input type="text" name="ordernumber" placeholder="Order Number"></td>
                     </tr>
           
            </table>
             <center><input type="Submit" value="search"/>
                 
             <a href="/FYPCian/CustCancelOrder.jsp" > <!-- link to cancel orders page -->
                 <input type="Button" value="Cancel Order"/></a></center>
        </form>
    <!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="flex">
                                            <!-- Border to split search and Order Display -->
                                            
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



