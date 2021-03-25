<%-- 
    Document   : AdminPage
    Created on : 20-Jan-2021, 14:57:22
    Author     : Cian O'Mahony 117436194
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<!--
Theory by TEMPLATED
templated.co @templatedco
Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

Modifications : changed header colour and size,changed titles and colours , changed navbar links and titles, changed body contents to own functions (Search view) changed footer copyright 
-->


<html>
<head> <!-- Begin Modify code -->
	<title>Bikes4U.ie</title>
       <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="/FYPCian/css/main.css" />
</head>
<body>
<!-- Header -->
 <header id="header">
	<div class="inner">
		<a href="AdminPage.jsp" class="logo">Bikes4U.ie</a> <!--link to admin home page -->
                
                <!-- links to different functions/pages -->
		<nav id="nav">
                        <a href="AdminPage.jsp">Home</a> <!--link to admin homepage-->
                        
			<a href="SearchAdminOrder.jsp">Search Order </a> <!--link to store order search page -->
                        
			<a href="SearchAdminCust.jsp">View Customer Profiles</a> <!--link to view customer profiles page -->
                        
                        <a href="SearchAdminCustProfiles.jsp">View Customer Accounts</a> <!-- link to view customer account page -->
                        
                        <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                        <a href ="<%=request.getContextPath() %>/AdminLogoutServ"> Logout</a>  <!--Logout of session -->
                        
                         <!--logout and displaying name on page code acquired and modified from  https://www.codejava.net/coding/how-to-code-login-and-logout-with-java-servlet-jsp-and-mysql -->
                        <h1>Logged in For ${adminlogin.store} </h1>
                        
		</nav>
		<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
	</div>
</header>

<!-- Welcome Banner -->
	<section id="banner">
		<h1>Bikes4U.ie Employee / Administrator Portal</h1>
        </section>

<!-- Section One -->
<!-- Admin/employee is redirected to these pages to carry out given functions -->
	<section id="one" class="wrapper">
		<div class="inner">
			<div class="flex flex-3">
			<article>
				<header>
				<h3>View Open Orders</h3>
				</header>
				<footer>
				<a href="SearchAdminOrder.jsp" > <!-- link to view store orders page -->
                                    <input type ="button" value="View Open Orders"/> </a>
				</footer>
			</article>
			<article>
				<header>
				<h3>View Customer Profiles</h3>
				</header>
				<footer>
				<a href="SearchAdminCust.jsp"> <!-- link to view customer profiles page -->
                                <input type ="button" value="View Customer Profiles "/></a>
				</footer>
			</article>
			<article>
			        <header>
			        <h3>View Customer Accounts</h3>
			        </header>
			        <footer>
			        <a href="SearchAdminCustProfiles.jsp" >   <!--link to view customer accounts  -->
                                    <input type ="button" value="View Accounts"/></a>
			        </footer>
			</article> 
                        </div>
		</div>
	</section>

<!-- Footer -->
	<footer id="footer">
		<div class="inner">
			<div class="flex">
				<div class="copyright">
					&copy; Bikes4U.ie
				</div> <!-- end modify -->
                                
			</div>
		</div>
	</footer>

		<!-- Scripts -->
			<script src="FYPCian/js/jquery.min.js"></script>
			<script src="FYPCian/js/skel.min.js"></script>
			<script src="FYPCian/js/util.js"></script>
			<script src="FYPCian/js/main.js"></script>

	</body>
</html>
